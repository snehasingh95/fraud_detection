package src.services;

import java.sql.*;
import java.util.*;

import src.database.DBConnection;

public class UtilsService {
    
    private static Connection connection = DBConnection.getInstance().getConnection();

    public static void exportTableToFile(String filename, String tableName){
        
    }

    public static void printTableToScreen(String tableName){
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs=stmt.executeQuery("select * from "+tableName);
            List<String> columnNames = getColumnNames(rs);
            while(rs.next()) {
                for(int indx = 0;indx<columnNames.size();indx++){
                    System.out.print(columnNames.get(indx)+": "+rs.getString(indx+1)+"; ");
                }
                System.out.println();
            } 
        }
        catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public static List<String> getColumnNames(ResultSet rs){
        List<String> columnNames = new ArrayList<>();
        try{
            ResultSetMetaData rsmd = rs.getMetaData();
            int columnCount = rsmd.getColumnCount();

            // The indexing starts from 1
            for (int columnIndx = 1; columnIndx <= columnCount; columnIndx++ ) {
                String columnName = rsmd.getColumnName(columnIndx);
                columnNames.add(formatColumnName(columnName));
            }
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        return columnNames;
    }

    private static String formatColumnName(String columnName) {
        StringBuilder formatedName = new StringBuilder();
        
        String[] words = columnName.toLowerCase().trim().split("_");
        for(String word:words){
            formatedName.append((char)(word.charAt(0)-32));
            formatedName.append(word.substring(1));
            formatedName.append(" ");
        }

        return formatedName.toString().trim();
    }
}
