/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hibernate.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;


@Entity
public class UserPurchase implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int userPurchaseId;
    private String userPurchaseName;
    private String moviePurchaseName;
    private String moviePrice;
    
    private Date purchaseDate;

    public UserPurchase() {
    }

    
    
    
    public UserPurchase(String userPurchaseName, String moviePurchaseName, String moviePrice, Date purchaseDate) {
        this.userPurchaseName = userPurchaseName;
        this.moviePurchaseName = moviePurchaseName;
        this.moviePrice = moviePrice;
        this.purchaseDate = purchaseDate;
    }
    
    

    public int getUserPurchaseId() {
        return userPurchaseId;
    }

    public void setUserPurchaseId(int userPurchaseId) {
        this.userPurchaseId = userPurchaseId;
    }

    public String getUserPurchaseName() {
        return userPurchaseName;
    }

    public void setUserPurchaseName(String userPurchaseName) {
        this.userPurchaseName = userPurchaseName;
    }

    public String getMoviePurchaseName() {
        return moviePurchaseName;
    }

    public void setMoviePurchaseName(String moviePurchaseName) {
        this.moviePurchaseName = moviePurchaseName;
    }

    public String getMoviePrice() {
        return moviePrice;
    }

    public void setMoviePrice(String moviePrice) {
        this.moviePrice = moviePrice;
    }

    public Date getPurchaseDate() {
        return purchaseDate;
    }

    public void setPurchaseDate(Date purchaseDate) {
        this.purchaseDate = purchaseDate;
    }

}
