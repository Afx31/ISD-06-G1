package model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dbConnector extends db {
    //Constructor for Con
    public dbConnector() throws ClassNotFoundException, SQLException {
        Class.forName(driver);
        conn = DriverManager.getConnection(URL+db, dbuser, dbpass);
    }
    //Method to open database connection
    public Connection openConnection(){
        return this.conn;
    }
    
    //Method to close database connection
    public void closeConnection() throws SQLException {
        this.conn.close();
    }
}

