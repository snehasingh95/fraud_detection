package src.services;

import java.io.FileWriter;
import java.sql.*;
import java.util.*;

import com.opencsv.CSVWriter;

import src.database.DBConnection;

/** 
 * Utility Class to perform common functionalities
 */

public class UtilsService {
    
    private static Connection connection = DBConnection.getInstance().getConnection();

    /**
     * Reads from database table and exports to a CSV file
     */
    public static void exportTableToCSVFile(String filename, String tableName) {
        try {
            Statement stmt = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            ResultSet rs=stmt.executeQuery("select * from "+tableName);
            String[] columnNames = getColumnNames(rs);

            CSVWriter writer = new CSVWriter(new FileWriter(filename));
            writer.writeNext(columnNames);
            writer.writeAll(rs, false);
            writer.close();
            System.out.println("File: "+filename);
        }
        catch (Exception e) {
            System.out.println(e.getMessage());
            System.out.println(e.getStackTrace());
        }
    }

    /**
     * Reads from database table and prints records to console screen
     */
    public static void printTableToScreen(String tableName) {
        try {
            Statement stmt = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            ResultSet rs=stmt.executeQuery("select * from "+tableName);
            String[] columnNames = getColumnNames(rs);

            while(rs.next()) {
                for(int indx = 0;indx<columnNames.length;indx++){
                    System.out.print(columnNames[indx]+": "+rs.getString(indx+1)+"; ");
                }
                System.out.println();
            } 
        }
        catch (Exception e) {
            System.out.println(e.getMessage());
            System.out.println(e.getStackTrace());
        }
        
    }

    /**
     * Returns formatted column names using database table headers
     */
    public static String[] getColumnNames(ResultSet rs){
        String[] columnNames = null;
        try{
            ResultSetMetaData rsmd = rs.getMetaData();
            int columnCount = rsmd.getColumnCount();
            columnNames = new String[columnCount];

            // The indexing starts from 1
            for (int columnIndx = 1; columnIndx <= columnCount; columnIndx++ ) {
                String columnName = rsmd.getColumnName(columnIndx);
                columnNames[columnIndx-1] = formatColumnName(columnName);
            }
        }catch(Exception e){
            System.out.println(e.getMessage());
            System.out.println(e.getStackTrace());
        }
        return columnNames;
    }

    /**
     * Returns regular typography of hyphenated text
     * eg: first_name is converted to First Name
     */
    public static String formatColumnName(String columnName) {
        StringBuilder formatedName = new StringBuilder();
        
        String[] words = columnName.toLowerCase().trim().split("_");
        for(String word:words){
            formatedName.append((char)(word.charAt(0)-32));
            formatedName.append(word.substring(1));
            formatedName.append(" ");
        }

        return formatedName.toString().trim();
    }

    /**
     * Return the data fence calculated using the inter-quartile range of input float values
     */
    public static float[] getIQRFence(List<Float> values) {
        Collections.sort(values);
        int len = values.size();
        
        float q1 = values.get(len/4);
        float q3 = values.get((3*len)/4);
        float iqr = q3-q1;

        q1 -= 1.5*iqr;
        q1 = Math.max(0, q1);
        q3 += 1.5*iqr;

        return new float[]{q1,q3};
    }

    
    
}
