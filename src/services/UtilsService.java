package src.services;

import java.sql.*;

import src.database.DBConnection;

public class UtilsService {
    
    private static Connection connection = DBConnection.getInstance().getConnection();

    public static void exportTableToFile(String filename, String schema){

    }

    public static void printTableToScreen(String schema){

    }
}
