/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;

public class MovieOrder implements Serializable {
    private String orderID;
    private String movieID;
    private String quantity;
    
    public MovieOrder(String orderID, String movieID, String quantity) {
        this.orderID = orderID;
        this.movieID = movieID;
        this.quantity = quantity;
    }
    
    public MovieOrder() {}
    
    public String getOrderID() { return orderID; }
    public void setOrderID(String orderID) { this.orderID = orderID; }
    
    public String getMovieID() { return movieID; }
    public void setMovieID(String movieID) { this.movieID = movieID; }
    
    public String getQuantity() { return quantity; }
    public void setQuantity(String quantity) { this.quantity = quantity; }
}
