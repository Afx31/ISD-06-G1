package model;

import java.io.Serializable;
import java.util.ArrayList;

public class Cart implements Serializable{
    private ArrayList<Movie> movies;
    
    public Cart() {}
    
    public void addMovie(Movie movie) {
	movies.add(movie);
    }
    
    public void removeMovie(Movie movie) {
        movies.remove(movie);
    }
    
    public double totalPrice() {
	double sum = 0.0;
	for (Movie m : movies)
            sum += m.getPrice();
	return sum;
    }
}
