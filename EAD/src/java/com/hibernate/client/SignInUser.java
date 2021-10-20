
package com.hibernate.client;

import com.hibernate.eao.UsersEao;
import com.hibernate.eao.UsersEaoImp;
import com.hibernate.entity.Users;


public class SignInUser {
    
    public static boolean registerUser(String username,String email,String password) {

        UsersEao usEao = new UsersEaoImp();
        Users us1 = new Users(username,email,password);
        usEao.SaveOrUpdate(us1);
    
        return true;
    }
    
//    public static boolean validateCustom(String username,String password){
//        boolean bstate = false;
//        
//        UsersEao usEao = new UsersEaoImp();
//        bstate = usEao.get(username, password);
//        return bstate;
//        
//
//    }
//    
    
    
}
