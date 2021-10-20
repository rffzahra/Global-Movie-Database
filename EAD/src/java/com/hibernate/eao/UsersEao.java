/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hibernate.eao;

import com.hibernate.entity.Users;

/**
 *
 * @author Thisara
 */
public interface UsersEao {
    
    void Create(Users users);
    
    void SaveOrUpdate(Users users);

    boolean UserSignUp(String userName,String email,String password);
    
    boolean UserSignIn(String userName,String password);
    
    boolean AdminSignIn(String userName,String password);
}
