package src.services;

import java.sql.*;

import src.database.DBConnection;

public class RuleService {

    private static Connection connection = DBConnection.getInstance().getConnection();

    public static void applyRule1(){
        System.out.println("applyRule1()");
    }

    public static void applyRule2(){
        System.out.println("applyRule2()");
    }
}
