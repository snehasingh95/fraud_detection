package src;
import java.util.*;

import com.mysql.cj.util.StringUtils;

import src.constants.Constants.RULE;
import src.database.DBConnection;
import src.services.*;

import java.sql.*;

public class FraudDetection {

    private static DBConnection dbConnection;
    private static Connection connection;

    public static void main(String args[]) {
        System.out.println("\n" + "#".repeat(100));
        connectToDatabase();
        verifyDatabase();

        clearTables();
        applyRules();
        printFrauds();

        dbConnection.closeConnection();
    }

    private static void connectToDatabase() {
        dbConnection = DBConnection.getInstance();
        connection = dbConnection.getConnection();
        System.out.println("\nConnected to Database");
    }

    private static void verifyDatabase(){
        try {
            Statement stmt=connection.createStatement();  
            ResultSet rs=stmt.executeQuery("select count(1) as n_accounts from account_info");
            if(rs.next()) {
                int n_accounts = rs.getInt("n_accounts");
                // System.out.println("n_accounts: "+n_accounts);
                if(n_accounts==0){
                    throw new Exception("MySQL database dump missing. Follow README file instructions");
                }
            } 

            rs = stmt.executeQuery("select count(1) as n_transactions from transactions");
            if(rs.next()) {
                int n_transactions = rs.getInt("n_transactions");
                // System.out.println("n_transactions: "+n_transactions);
                if(n_transactions==0){
                    throw new Exception("MySQL database dump missing. Follow README file instructions");
                }
            } 
            System.out.println("Passed Database Verification");
        }
        catch(Exception e) { 
            System.out.println(e.getMessage());
            System.exit(0);
        }
    }

    private static void clearTables() {
        for(RULE r:RULE.values()){
            if(!StringUtils.isEmptyOrWhitespaceOnly(r.getTableName())){
                String query = "delete from "+r.getTableName();
                try{
                    Statement stmt = connection.createStatement();
                    stmt.executeUpdate(query);
                    // System.out.println(r.getTableName()+" cleared");
                }catch(Exception e){
                    System.out.println(e.getMessage());
                }
            }
        }
    }

    private static void applyRules() {
        System.out.println("\nStarting Fraud Detection...");
        for(RULE r:RULE.values()){
            r.applyRule();
        }
    }

    private static void printFrauds() {
        // System.out.println("\nPrinting Fraud Transactions...");   
        for(RULE r:RULE.values()){
            if(!StringUtils.isEmptyOrWhitespaceOnly(r.getTableName())){
                System.out.println("\n"+"#".repeat(30)+" Fraud Transactions according to " + r.getName() + " "+"#".repeat(30));
                UtilsService.exportTableToFile(r.getTableName()+".csv", r.getTableName());
                UtilsService.printTableToScreen(r.getTableName());
            }
        }
    }
}