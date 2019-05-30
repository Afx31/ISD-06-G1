package model.dao;

import java.sql.Connection;

public abstract class db {
    protected String URL = "jdbc:derby://localhost:1527/";//Address of Database
    protected String db = "ArchiveDB";//Name of the database
    protected String dbuser = "archive";//db root user
    protected String dbpass = "archive"; //db root password
    protected String driver = "org.apache.derby.jdbc.ClientDriver"; //jdbc client driver 
    protected Connection conn; //connection null-instance to be initialized in sub-classes
}
