package src.database;

import java.sql.*;

public class DBConnection {
    String url = "jdbc:mysql://localhost:3306/";
    String dbName = "customer";
    String driver = "com.mysql.cj.jdbc.Driver";
    String userName = "root";
    String password = "";

    private static DBConnection dbConnection;   
    private Connection connection ;
    private DBConnection() {
        connection = createConnection();
    }

    public Connection createConnection() {
        Connection connection = null;
        try {
            // Load the JDBC driver
            Class driver_class = Class.forName(driver);
            Driver driver = (Driver) driver_class.newInstance();
            DriverManager.registerDriver(driver);
            connection = DriverManager.getConnection(url + dbName, userName, password);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InstantiationException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public void closeConnection() {
        try {
            this.connection.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    /**
     * Create a static method to get instance.
     */
    public static DBConnection getInstance() {
        if (dbConnection == null) {
            dbConnection = new DBConnection();
        }
        return dbConnection;
    }

    public Connection getConnection(){
        return this.connection;
    }
}
