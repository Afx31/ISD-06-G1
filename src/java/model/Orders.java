/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.sql.Date;

public class Orders implements Serializable {
    private String ID;
    private String userID;
    private Date purchaseDate;
    private String status;
    private String payment;
    private String totalCost;
    
    
    public Orders(String ID, String userID, Date purchaseDate, String status, String payment, String totalCost) {
        this.ID = ID;
        this.userID = userID;
        this.purchaseDate = purchaseDate;
        this.status = status;
        this.payment = payment;
        this.totalCost = totalCost;                
    }
    
    public Orders() {}
    
    public String getID() { return ID; }
    public void setID(String ID) { this.ID = ID; }
    
    public String getUserID() { return userID; }
    public void setUserID(String userID) { this.userID = userID; }
    
    public Date getPurchaseDate() { return purchaseDate; }
    public void setPurchaseDate(Date purchaseDate) { this.purchaseDate = purchaseDate; }
    
    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
    
    public String getPayment() { return payment; }
    public void setPayment(String payment) { this.payment = payment; }
    
    public String getTotalCost() { return totalCost; }
    public void setTotalCost(String totalCost) { this.totalCost = totalCost; }
}
