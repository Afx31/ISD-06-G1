package model;

import java.io.Serializable;

public class Movie implements Serializable {
    private String ID;
    private String genre;
    private String director;
    private double price;
    private int stock;
    private String title;    
    private String published;
    //private String image;

    public Movie(String ID, String genre, String director, double price, int stock, String title, String published/*, String image*/) {
        this.ID = ID;
        this.genre = genre;
        this.director = director;
        this.price = price;
        this.stock = stock;
        this.title = title;
        this.published = published;
        //this.image = image;
    }

    public Movie() {}
    
    public String getID() { return ID; }    
    public void setID(String ID) { this.ID = ID; }
    
    public String getGenre() { return genre; }    
    public void setGenre(String genre) { this.genre = genre; }
    
    public String getDirector() { return director; }    
    public void setDirector(String director) { this.director = director; }
    
    public double getPrice() { return price; }    
    public void setPrice(double price) { this.price = price; }
    
    public int getStock() { return stock; }    
    public void setStock(int stock) { this.stock = stock; }    
    
    public String getTitle() { return title; }    
    public void setTitle(String title) { this.title = title; }
    
    public String getPublished() { return published; }    
    public void setPublished(String date) { this.published = date; }
    
    
    /*public String getImage() { return image; }    
    public void setImage(String image) { this.image = image; }*/
}