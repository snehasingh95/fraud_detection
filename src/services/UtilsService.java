package src.services;

import java.sql.*;

import src.database.DBConnection;

public class UtilsService {
    
    private static Connection connection = DBConnection.getInstance().getConnection();

    public static void exportTableToFile(String filename, String tableName){

    }

    public static void printTableToScreen(String tableName){
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs=stmt.executeQuery("select * from "+tableName);
            while(rs.next()) {
                System.out.println(
                    "Name: "+rs.getString("first_name")+" "+ rs.getString("last_name")
                    +"; Account Number: "+rs.getInt("account_number")
                    +"; Transaction Number: "+rs.getInt("transaction_number")
                    +"; Expected Location: "+rs.getString("expected_transaction_location")
                    +"; Actual Location: "+rs.getString("actual_transaction_location")
                );
            } 
        }
        catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
