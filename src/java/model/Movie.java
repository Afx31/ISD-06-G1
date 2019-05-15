package model;

import java.io.Serializable;

public class Movie implements Serializable {
    private String title;
    private String director;
    private String date;
    private String genre;
    private double price;
    private int stock;
    private String image;

    public Movie(String title, String director, String date, String genre, double price, int stock, String image) {
        this.title = title;
        this.director = director;
        this.date = date;
        this.genre = genre;
        this.price = price;
        this.stock = stock;
        this.image = image;
    }

    public Movie() {}
    
    public String getTitle() {
        return title;
    }
    public String getDirector() {
        return director;
    }
    public String getDate() {
        return date;
    }
    public String getGenre() {
        return genre;
    }
    public double getPrice() {
        return price;
    }
    public int getStock() {
        return stock;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public void setDirector(String director) {
        this.director = director;
    }
    public void setDate(String date) {
        this.date = date;
    }
    public void setGenre(String genre) {
        this.genre = genre;
    }
    public void setPrice(double price) {
        this.price = price;
    }
    public void setStock(int stock) {
        this.stock = stock;
    }
    public String getImage() {
        return image;
    }
    public void setImage(String image) {
        this.image = image;
    }
}
