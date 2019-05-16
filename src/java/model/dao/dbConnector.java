package model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dbConnector extends db {

    public dbConnector() throws ClassNotFoundException, SQLException {
        Class.forName(driver);
        conn = DriverManager.getConnection(URL+db, dbuser, dbpass);
    }

    public Connection openConnection(){
        return this.conn;
    }
    
    public void closeConnection() throws SQLException {
        this.conn.close();
    }
}

