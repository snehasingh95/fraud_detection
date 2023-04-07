package src.services;

import java.sql.*;
import java.util.*;

import src.database.DBConnection;

public class RuleService {

    private static Connection connection = DBConnection.getInstance().getConnection();

    public static void applyRule1(String tableName){
        // account_number -> merchant_number -> transaction_amounts
        Map<Integer, Map<String, List<Float>>> customerMerchantMap = generateCustomerMerchantMap();
        generateIQR(customerMerchantMap);
        detectAbnormalTransactions(tableName);
    }

    private static Map<Integer, Map<String, List<Float>>> generateCustomerMerchantMap(){
        // account_number -> merchant_number -> transaction_amounts
        Map<Integer, Map<String, List<Float>>> customerMerchantMap = new HashMap<>();
        String query = "select account_number, merchant_number, transaction_amount "
                        +"from transactions";
        try{
            Statement stmt = connection.createStatement();
            ResultSet rs=stmt.executeQuery(query);
            while(rs.next()){
                int accountNumber = rs.getInt("account_number");
                String merchantNumber = rs.getString("merchant_number");
                float transactionAmount = rs.getFloat("transaction_amount");

                customerMerchantMap.computeIfAbsent(accountNumber, x-> new HashMap<>())
                                    .computeIfAbsent(merchantNumber, x-> new ArrayList<>())
                                    .add(transactionAmount);
                    
            }
        }catch(Exception e){
            System.out.println(e.getMessage());
            System.out.println(e.getStackTrace());
        }
        return customerMerchantMap;
    }

    private static void generateIQR(Map<Integer, Map<String, List<Float>>> customerMerchantMap) {
        for(int accountNumber:customerMerchantMap.keySet()){
            Map<String, List<Float>> merchantTransactionMap = customerMerchantMap.get(accountNumber);
            for(String merchantNumber: merchantTransactionMap.keySet()){
                List<Float> transactionAmounts = merchantTransactionMap.get(merchantNumber);
                if(transactionAmounts.size()>2){
                    float[] validRange = UtilsService.getIQR(transactionAmounts);
                    storeIQR(accountNumber, merchantNumber, validRange);
                }
            }
        }
    }

    private static void storeIQR(int accountNumber, String merchantNumber, float[] validRange) {
        String query = "insert into transaction_range(account_number, merchant_number, min_amt, max_amt) "
                        +"values(?,?,?,?)";
        try{
            PreparedStatement pstmt = connection.prepareStatement(query);
            pstmt.setInt(1, accountNumber);
            pstmt.setString(2, merchantNumber);
            pstmt.setFloat(3, validRange[0]);
            pstmt.setFloat(4, validRange[1]);
            int count=pstmt.executeUpdate();
        }catch(Exception e){
            System.out.println(e.getMessage());
            System.out.println(e.getStackTrace());
        }
    }

    private static void detectAbnormalTransactions(String tableName) {
        // outliers
        String query = "insert into "+tableName+" "
                        +"select concat(a.first_name, ' ', a.last_name) as customer_name, "
                        +"t.account_number, t.transaction_number, t.merchant_number, "
                        +"t.merchant_description, t.transaction_amount "
                        +"from transaction_range r left join transactions t "
                        +"on r.account_number=t.account_number and r.merchant_number = t.merchant_number "
                        +"left join account_info a on t.account_number = a.account_number "
                        +"where t.transaction_amount not between r.min_amt and r.max_amt";
        try{
            Statement stmt = connection.createStatement();
            int count=stmt.executeUpdate(query);
            // System.out.println(count+" frauds found");
        }catch(Exception e){
            System.out.println(e.getMessage());
            System.out.println(e.getStackTrace());
        }
    }

    public static void applyRule2(String tableName){
        // System.out.println("Applying Rule 2");
        String query = "insert into "+tableName+" "
                        +"select concat(a.first_name, ' ', a.last_name) as customer_name, "
                        +"t.account_number, t.transaction_number, a.state, t.transaction_state "
                        +"from transactions t join account_info a "
                        +"on t.account_number=a.account_number "
                        +"where t.transaction_state <> a.state";
        try{
            Statement stmt = connection.createStatement();
            int count=stmt.executeUpdate(query);
            // System.out.println(count+" frauds found");
        }catch(Exception e){
            System.out.println(e.getMessage());
            System.out.println(e.getStackTrace());
        }
    }

    private static void updateState(){
        try {
            Statement stmt = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs=stmt.executeQuery(
                "select account_number, transaction_number, merchant_description, transaction_state"
                +" from transactions"
                +" where transaction_state = 'US'"
            );
            while(rs.next()) {
                String merchant_description = rs.getString("merchant_description").trim();

                int n = merchant_description.length();
                String state = merchant_description.substring(n-2);
                merchant_description = merchant_description.substring(0,n-2).trim();

                rs.updateString("merchant_description", merchant_description);
                rs.updateString("transaction_state", state);
                rs.updateRow();
            } 
            System.out.println("Updates Completed");
        }
        catch (Exception e) {
            System.out.println(e.getMessage());
            System.out.println(e.getStackTrace());
        }
    }
}
