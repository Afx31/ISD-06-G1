package model.dao;

import java.sql.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import model.*;

public class dbManager {

    private Statement st;

    public dbManager(Connection conn) throws SQLException {
        st = conn.createStatement();
    }

    public ResultSet findMovie(String title) throws SQLException{
        String sql;
        if (title == ""){
            sql = "SELECT * FROM archive.movie";
        } else {
            sql = "SELECT * FROM archive.movie WHERE lower(title) LIKE '%" + title.toLowerCase() + "%'";
        }
        ResultSet rs = st.executeQuery(sql);
        return rs;
    }
    
    public void addMovie(String ID, String Genre, String Director, String Price, String Stock, String Title, String Published) throws SQLException{
        //String sql = "INSERT INTO archive.movie VALUES ('" + ID + "', " + Genre + "', )";
        String sql = "INSERT INTO archive.movie VALUES('"+ID+"', '"+Genre+"', '"+Director+"', '"+Price+"', '"+Stock+"', '"+Title+"', '"+Published+"')";
        st.executeUpdate(sql);
    }
    
    public void deleteMovie(String ID) throws SQLException{
        String sql = "DELETE FROM movie WHERE ID = '"+ID+"'";
        st.executeUpdate(sql);
    }
    
    public void updateMovie(String ID, String Genre, String Director, String Price, String Stock, String Title, String Published) throws SQLException{
        //String sql = "UPDATE archive.movie SET ID='"+ID+"', GENRE='"+Genre+"', DIRECTOR='"+Director+"', PRICE='"+Price+"', STOCK='"+Stock+"', TITLE='"+Title+"', PUBLISHED='"+Published+"')";
        String sql = "UPDATE archive.movie SET GENRE='"+Genre+"', DIRECTOR='"+Director+"', PRICE='"+Price+"', STOCK='"+Stock+"', TITLE='"+Title+"', PUBLISHED='"+Published+"' WHERE ID='"+ID+"'";
        st.executeUpdate(sql);
    }
    
    public void updateMovieStock(String ID, String stock) throws SQLException {
        String sql = "UPDATE archive.movie SET STOCK='" +stock+"' WHERE ID='"+ID+"'";
        st.executeUpdate(sql);
    }
    
    public Movie findMovieID(String id) throws SQLException{
        String sql = "SELECT * FROM archive.movie WHERE id = '" + id + "'";        
        ResultSet rs = st.executeQuery(sql);
        Movie movie = null;
        if(rs.next()) {
            String movieID = rs.getString("ID");
            String genre = rs.getString("GENRE"); 
            String director = rs.getString("DIRECTOR");
            String price = rs.getString("PRICE");
            String stock = rs.getString("STOCK");
            String title = rs.getString("TITLE");
            String published = rs.getString("PUBLISHED");
            movie = new Movie(movieID, genre, director, price, stock, title, published);
        }
        return movie;
    }

//Find student by ID in the database
    public Users findUser(String email) throws SQLException {
        //setup the select sql query string
        //execute this query using the statement field
        //add the results to a ResultSet
        //search the ResultSet for a student using the parameters
        String emailLower = email.toLowerCase();
        String sql = "SELECT * FROM archive.users WHERE Lower(EMAIL) = '"+ emailLower +"' ";
        ResultSet rs = st.executeQuery(sql);
        Users user = null;
        if(rs.next()) {
            //System.out.println("after "+ rs.getString("EMAIL"));
            String id = rs.getString("ID");
            String fn = rs.getString("FIRSTNAME");
            String ln = rs.getString("LASTNAME");
            String phone = rs.getString("PHONE");
            String pw = rs.getString("PASSWORD");
            String rsemail = rs.getString("EMAIL");
            String role = rs.getString("ROLE");
            user = new Users(id, fn, ln, phone, pw, rsemail, role);
        }
        return user;
    }
    
    public Users[] findAllUsers() throws SQLException{
        String sql = "SELECT * FROM archive.users";
        ResultSet rs = st.executeQuery(sql);
        int rscount = 0;
        if(rs.last()) {
            rscount = rs.getRow();
            rs.beforeFirst();
        }
        Users[] users = new Users[rscount];
        int i = 0;
        while(rs.next()) {
            String id = rs.getString("ID");
            String fn = rs.getString("FIRSTNAME");
            String ln = rs.getString("LASTNAME");
            String phone = rs.getString("PHONE");
            String pw = rs.getString("PASSWORD");
            String rsemail = rs.getString("EMAIL");
            String role = rs.getString("ROLE");
            users[i] = new Users(id, fn, ln, phone, pw, rsemail, role); 
            i++;
        }
        return users;
    }

    //Check if a student exist in the database
    public boolean checkUser(String email, String password) throws SQLException {
       //setup the select sql query string
        //execute this query using the statement field
        //add the results to a ResultSet
        //search the ResultSet for a student using the parameters
        //verify if the student exists
        String emailLower = email.toLowerCase();
        String sql = "SELECT * FROM archive.users WHERE Lower(EMAIL) = '"+ emailLower +"' AND PASSWORD = '"+ password +"' ";
        ResultSet rs = st.executeQuery(sql);
        return rs.next();
    }
    
    public void addLog(String ID, String event) throws SQLException{
        DateTimeFormatter dft = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        LocalDateTime ldt = LocalDateTime.now();
        int rsCount = 0;
        String sqlcount = "SELECT * FROM archive.accesslog ORDER BY length(ID) DESC, ID DESC";
        ResultSet rs = st.executeQuery(sqlcount);
        if(rs.next()) {
            rsCount = Integer.parseInt(rs.getString("ID")) + 1;
        }
        System.out.print("getID: "+rs.getString("ID"));
        System.out.print("rsCount: "+rsCount);
        String sql = "INSERT INTO archive.accesslog VALUES('"+rsCount+"', '"+ID+"', '"+dft.format(ldt)+"', '"+event+"')";
        st.executeUpdate(sql);
    }
    
    public int countRows(String sql) throws SQLException{
        ResultSet rs = st.executeQuery(sql);
        int rscount = 0;
        while(rs.next()) {
            rscount++;
        }
        return rscount;
    }
    
    public AccessLog[] findAccessLogs() throws SQLException{
        return null;
    }

    //Add a student-data into the database
    public void addUser(String firstname, String lastname, String phone, String password, String email) throws SQLException {        
        String role = "c";
        int rsCount = 0;
        String sqlcount = "SELECT * FROM archive.users ORDER BY ID DESC";
        ResultSet rs = st.executeQuery(sqlcount);
        if(rs.next()) {
            rsCount = Integer.parseInt(rs.getString("ID")) + 1;
        }    
        String sql = "INSERT INTO archive.users VALUES('"+rsCount+"', '" + firstname + "', '" + lastname + "', '" + phone + "', '" + password + "', '" + email + "', '" + role + "')";
            st.executeUpdate(sql);
    }

    public void addStaff(String firstname, String lastname, String phone, String password, String email, String role) throws SQLException {        
        int rsCount = 0;
        String sqlcount = "SELECT * FROM archive.users ORDER BY ID DESC";
        ResultSet rs = st.executeQuery(sqlcount);
        if(rs.next()) {
            rsCount = Integer.parseInt(rs.getString("ID")) + 1;
        }    
        String sql = "INSERT INTO archive.users VALUES('"+rsCount+"', '" + firstname + "', '" + lastname + "', '" + phone + "', '" + password + "', '" + email + "', '" + role + "')";
            st.executeUpdate(sql);
    }

    //update a student details in the database
    public void updateUser(String ID, String firstName,String lastName,String dob,String password,String email,String role) throws SQLException {
        //code for update-operation        
        String sql = "UPDATE archive.users SET ID='"+ID+"', FIRSTNAME='"+firstName+"', LASTNAME='"+lastName+"', DOB='"+dob+"', PASSWORD='"+password+"', EMAIL='"+email+"' WHERE ID='"+ID+"'";
        //missing role
        st.executeUpdate(sql);
    }
    
    //delete a student from the database
    public void deleteUser(String ID) throws SQLException{
        //code for delete-operation
    }
    
    public void addOrder(String ID, String userID, String status, String payment, String totalCost) throws SQLException {
        DateTimeFormatter dft = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        LocalDateTime ldt = LocalDateTime.now();
        String sql = "INSERT INTO archive.orders VALUES('"+ID+"', '"+userID+"', '"+dft.format(ldt)+"', '"+status+"', '"+payment+"', '"+totalCost+"')";
        st.executeUpdate(sql);
    }
}