/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hibernate.eao;

import com.hibernate.entity.Movie;
import com.hibernate.entity.UserPurchase;
import java.util.Date;
import java.util.List;


public interface UserPurchaseEao {
    void create(UserPurchase userPurchase);
    
    void saveOrUpdate(UserPurchase userPurchase);
    
    boolean UserPurchaseIn(String UserPurchName,String movieName,String moviePrice,Date purchaseDate);
    
    List<UserPurchase> getPurchaseDetails(String flmNm);
    
    List<UserPurchase> getUserPurchaseCheck(String purchaseUserName);
    
//    boolean UserPurchaseCheck(String movieName, String purchaseUserName);
    
    
}
