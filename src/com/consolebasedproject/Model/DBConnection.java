package com.consolebasedproject.Model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    public static String url = "jdbc:mysql://localhost:3306/cproject";
    public static String user = "root";
    public static String password = "Anusuya_1234";
    private static Connection con;
    private DBConnection() {
        try {
            connect = DriverManager.getConnection(url, user, password);
        }
        catch (SQLException ex) {
            ex.fillInStackTrace();
        }
    }
    public static void connect() {
        new DBConnection();
    }
    public static Connection provideConnection() {
        return DBConnection.con;
    }
}
