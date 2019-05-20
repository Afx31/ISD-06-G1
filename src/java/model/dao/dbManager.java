package model.dao;

import java.sql.*;
import model.*;

public class dbManager {

    private Statement st;

    public dbManager(Connection conn) throws SQLException {
        st = conn.createStatement();
    }

    public ResultSet findMovie(String title) throws SQLException{
        String sql = "SELECT title FROM archive.movie WHERE title = " + title;
        ResultSet rs = st.executeQuery(sql);
        return rs;
    }
    
    public void addMovie(String ID, String Genre, String Director, String Price, String Stock, String Title, String Published) throws SQLException{
        //String sql = "INSERT INTO archive.movie VALUES ('" + ID + "', " + Genre + "', )";
        String sql = "INSERT INTO archive.movie VALUES('"+ID+"', '"+Genre+"', '"+Director+"', '"+Price+"', '"+Stock+"', '"+Title+"', '"+Published+"')";
        st.executeUpdate(sql);
    }

//Find student by ID in the database
    public Users findUser(String email, String password) throws SQLException {
        //setup the select sql query string
        //execute this query using the statement field
        //add the results to a ResultSet
        //search the ResultSet for a student using the parameters
        String sql = "SELECT * FROM archive.users WHERE EMAIL = '"+ email +"' AND PASSWORD = '"+ password +"' ";
        ResultSet rs = st.executeQuery(sql);
        Users user = null;
        if(rs.next()) {
            System.out.println("after "+ rs.getString("EMAIL"));
            String id = rs.getString("ID");
            String fn = rs.getString("FIRSTNAME");
            String ln = rs.getString("LASTNAME");
            String dob = rs.getString("DOB");
            String pw = rs.getString("PASSWORD");
            String rsemail = rs.getString("EMAIL");
            String role = rs.getString("ROLE");
            user = new Users(id, fn, ln, dob, pw, rsemail, role);
        }
        return user;
    }

    //Check if a student exist in the database
    public boolean checkUser(String ID, String password) throws SQLException {
       //setup the select sql query string
        //execute this query using the statement field
        //add the results to a ResultSet
        //search the ResultSet for a student using the parameters
        //verify if the student exists
        return false;
    }

    //Add a student-data into the database
    public void addUser(String ID, String email, String name, String password, String dob, String favcol) throws SQLException {        
        //code for add-operation
    }

    //update a student details in the database
    public void updateUser(String ID, String email, String name, String password, String dob, String favcol) throws SQLException {
        //code for update-operation
    }
    
    //delete a student from the database
    public void deleteUser(String ID) throws SQLException{
        //code for delete-operation
    }
}
