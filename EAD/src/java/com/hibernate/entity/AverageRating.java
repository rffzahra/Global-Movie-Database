
package com.hibernate.entity;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import org.hibernate.annotations.GeneratorType;

@Entity
public class AverageRating implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int AutoGenId;
    private String Users;
    private String movieName;
    private int rateVal;

    public AverageRating() {
    }

    public AverageRating(String Users, String movieName, int rateVal) {
        this.Users = Users;
        this.movieName = movieName;
        this.rateVal = rateVal;
    }


    public String getUsers() {
        return Users;
    }

    public void setUsers(String Users) {
        this.Users = Users;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public int getAutoGenId() {
        return AutoGenId;
    }

    public void setAutoGenId(int AutoGenId) {
        this.AutoGenId = AutoGenId;
    }

    public int getRateVal() {
        return rateVal;
    }

    public void setRateVal(int rateVal) {
        this.rateVal = rateVal;
    }

    
    


}
