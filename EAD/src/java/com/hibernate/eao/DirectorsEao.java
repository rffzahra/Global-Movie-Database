/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hibernate.eao;

import com.hibernate.entity.Directors;



/**
 *
 * @author Thisara
 */
public interface DirectorsEao{

    void create(Directors directors);
    
    void saveOrUpdate(Directors directors);
    
    void delete(Directors directors);

    
    
    
}
