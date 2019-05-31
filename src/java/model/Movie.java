package model;

import java.io.Serializable;

public class Movie implements Serializable {
    //Fields for Movie Object
    private String ID;
    private String genre;
    private String director;
    private String price;
    private String stock;
    private String title;    
    private String published;
    
    //Constructor for Movie Object
    public Movie(String ID, String genre, String director, String price, String stock, String title, String published) {
        this.ID = ID;
        this.genre = genre;
        this.director = director;
        this.price = price;
        this.stock = stock;
        this.title = title;
        this.published = published;
    }

    public Movie() {}
    //Getters and Setters for Movie Object
    
    public String getID() { return ID; }    
    public void setID(String ID) { this.ID = ID; }
    
    public String getGenre() { return genre; }    
    public void setGenre(String genre) { this.genre = genre; }
    
    public String getDirector() { return director; }    
    public void setDirector(String director) { this.director = director; }
    
    public String getPrice() { return price; }    
    public void setPrice(String price) { this.price = price; }
    
    public String getStock() { return stock; }    
    public void setStock(String stock) { this.stock = stock; }    
    
    public String getTitle() { return title; }    
    public void setTitle(String title) { this.title = title; }
    
    public String getPublished() { return published; }    
    public void setPublished(String published) { this.published = published; }
}