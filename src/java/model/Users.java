/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;

/**
 *
 * @author Alson
 */
public class Users implements Serializable{
    private String ID;   
    private String firstName;   
    private String lastName;    
    private String dob;    
    private String password; 
    private String email;
    private String role;
    
    public Users(String ID, String firstName,String lastName,String dob,String password,String email,String role) {
        this.ID = ID;
        this.firstName = firstName;
        this.lastName = lastName;
        this.dob = dob;  
        this.password = password;
        this.email = email;
        this.role = role;
    }

    public Users() { }
    
    public void updateUsers(String firstName,String lastName,String dob,String password,String email) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.dob = dob;  
        this.password = password;
        this.email = email;
    }
    
    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}
