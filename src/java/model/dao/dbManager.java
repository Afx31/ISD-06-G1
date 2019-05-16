package model.dao;

import java.sql.*;
import model.Movie;

public class dbManager {

    private Statement st;

    public dbManager(Connection conn) throws SQLException {
        st = conn.createStatement();
    }

    public ResultSet findMovie(String title) throws SQLException{
        String sql = "SELECT title FROM archive.movie WHERE title =" + title;
        ResultSet rs = st.executeQuery(sql);
        return rs;
    }
    
    public void addMovie(String ID, String Genre, String Director, double Price, int stock, String Title, String Published){
    
    }

//Find student by ID in the database
    public Movie findUser(String ID, String password) throws SQLException {
        //setup the select sql query string
        //execute this query using the statement field
        //add the results to a ResultSet
        //search the ResultSet for a student using the parameters
        
        return null;
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
