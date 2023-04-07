package src.services;

import java.sql.*;

import src.database.DBConnection;

public class RuleService {

    private static Connection connection = DBConnection.getInstance().getConnection();

    public static void applyRule1(){
        System.out.println("Pending applyRule1()");
    }

    public static void applyRule2(String table){
        // System.out.println("Applying Rule 2");
        String query = "insert into "+table+" "
                        +"select a.first_name, a.last_name, a.account_number, "
                        +"t.transaction_number, a.state, t.transaction_state "
                        +"from transactions t join account_info a "
                        +"on t.account_number=a.account_number "
                        +"where t.transaction_state <> a.state";
        try{
            Statement stmt = connection.createStatement();
            int count=stmt.executeUpdate(query);
            // System.out.println(count+" frauds found");
        }catch(Exception e){
            System.out.println(e.getMessage());
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
        }
    }
}
