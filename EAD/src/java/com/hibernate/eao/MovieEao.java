
package com.hibernate.eao;

import com.hibernate.entity.Movie;
import java.util.List;


public interface MovieEao {
    
    void create(Movie movie);
    
    void saveOrUpdate(Movie movie);
    
    boolean FilmAdd(String movieName,String runtime,String origin, String price,String link);
    
    List<Movie> getMovies();
    
    void delete(Movie movie);
    
    
}
