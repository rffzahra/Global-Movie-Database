
package com.hibernate.entity;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;


@Entity
public class Genres implements Serializable {
    
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int genresId;
    private String genresName;
    
    @ManyToOne
    private Movie movie;

    public int getGenresId() {
        return genresId;
    }

    public void setGenresId(int genresId) {
        this.genresId = genresId;
    }

    public String getGenresName() {
        return genresName;
    }

    public void setGenresName(String genresName) {
        this.genresName = genresName;
    }

    public Movie getMovie() {
        return movie;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }
    
    
    
    

}
