package com.mum.edu.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBconnection {

    private static final String connectionURL = "jdbc:mysql://localhost:3306/onlineshoppingdb";
    
    public static synchronized Connection getMySQLConnection() throws SQLException,
            ClassNotFoundException {
        return getMySQLConnection(connectionURL, "root", "1234");
    }
    
    public static synchronized Connection getMySQLConnection(String connectionURL,
            String userName, String password) throws SQLException,
            ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");

        Connection conn = DriverManager.getConnection(connectionURL, userName,
                password);
        return conn;
    }
}
