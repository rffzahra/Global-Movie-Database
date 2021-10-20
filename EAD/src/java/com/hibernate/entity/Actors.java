package com.hibernate.entity;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Actors implements Serializable {
    
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int actorsId;
    private String actorsName;
    
    @ManyToOne
    @JoinColumn(name="movieId")
    private Movie movie;

    public Actors() {
    }

    public int getActorsId() {
        return actorsId;
    }

    public void setActorsId(int actorsId) {
        this.actorsId = actorsId;
    }

    public String getActorsName() {
        return actorsName;
    }

    public void setActorsName(String actorsName) {
        this.actorsName = actorsName;
    }

    public Movie getMovie() {
        return movie;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }

}
