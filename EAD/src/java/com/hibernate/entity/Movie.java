package com.hibernate.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import javax.persistence.CascadeType;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.OneToMany;

@Entity
public class Movie implements Serializable{

   

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int movieId;
    private String movieName;
    private String movieRuntime;
    private String origin;
    private String price;
    private String link;

    @OneToMany(mappedBy="movie",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    private Collection<Actors> actors =new ArrayList();
    
    @OneToMany(mappedBy="movie",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    private Collection<Directors> directors =new ArrayList();
    
    @OneToMany(mappedBy="movie",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    private Collection<Genres> genres =new ArrayList();

    public Movie() {
    }

    public Movie(String movieName) {
        this.movieName = movieName;
    }

    public Movie(String movieName, String movieRuntime, String origin, String price, String link) {
        this.movieName = movieName;
        this.movieRuntime = movieRuntime;
        this.origin = origin;
        this.price = price;
        this.link = link;
    }

     
     
     

    public int getMovieId() {
        return movieId;
    }

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }

    public String getMovieRuntime() {
        return movieRuntime;
    }

    public void setMovieRuntime(String movieRuntime) {
        this.movieRuntime = movieRuntime;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }


    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public Collection<Directors> getDirectors() {
        return directors;
    }

    public void setDirectors(Collection<Directors> directors) {
        this.directors = directors;
    }

    public Collection<Genres> getGenres() {
        return genres;
    }

    public void setGenres(Collection<Genres> genres) {
        this.genres = genres;
    }

    public Collection<Actors> getActors() {
        return actors;
    }

    public void setActors(Collection<Actors> actors) {
        this.actors = actors;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    


    
}
