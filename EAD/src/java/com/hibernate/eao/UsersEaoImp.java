/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hibernate.eao;

import com.hibernate.entity.Users;
import com.hibernate.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Thisara
 */
public class UsersEaoImp implements UsersEao{
    
    SessionFactory sessionFactory;
    
    public UsersEaoImp() { 
        sessionFactory = HibernateUtil.getSessionFactory(); 
    }

    @Override
    public void Create(Users users) {
        
        Session session = sessionFactory.openSession(); 
        session.beginTransaction(); 

        session.persist(users); 
        
        session.getTransaction().commit(); 
        session.close();
        
    }

    @Override
    public void SaveOrUpdate(Users users) {
        
        Session session = sessionFactory.openSession(); 
        session.beginTransaction(); 

        session.saveOrUpdate(users); 
        
        session.getTransaction().commit(); 
        session.close();
        
    }
    
    
    @Override
    public boolean UserSignUp(String userName, String email, String password) {
        Users us1 = new Users(userName,email,password);
        boolean bstate = false;
        try{

            Session session = sessionFactory.openSession(); 
            session.beginTransaction(); 

            session.saveOrUpdate(us1); 
        
            session.getTransaction().commit(); 
            session.close();
            
            bstate = true;
            
        }catch(Exception e){}
        
        return bstate;
       
    }

    @Override
    public boolean UserSignIn(String userName,String password){
        
        boolean bstate = false;
        
        try{
            Session session = sessionFactory.openSession();
//            session.beginTransaction();
            System.out.println("aaaaaaa##");
            System.out.println(userName);
            Users user = (Users) session.get(Users.class,userName);
            System.out.println("bbbbbbb");
            if(user.getUserName().equals(userName) && user.getUserPassword().equals(password)){
                bstate = true;
                return bstate;
            }          
        }catch(Exception e){
            e.printStackTrace();
        
        }
        return bstate;
    
    }
    
    
    
     @Override
    public boolean AdminSignIn(String userName,String password){
        
        boolean bstate = false;
        
        try{
            Session session = sessionFactory.openSession();
//            session.beginTransaction();
            System.out.println("aaaaaaa##");
            System.out.println(userName);
            Users user = (Users) session.get(Users.class,userName);
            System.out.println("bbbbbbb");
            if(user.getUserName().equals(userName) && user.getUserPassword().equals(password)){
                bstate = true;
                return bstate;
            }
                    
        }catch(Exception e){
            e.printStackTrace();
        
        }
        return bstate;
    
    }
    
    

//    @Override
//    public boolean UserSignIn(String userName, String password) {
//        boolean bstate = false;
//        
//        try{
//            System.out.println("11111111111111111111111111111111111111111111111111111111");
//            String hql = "From Users u WHERE u.Users.username = :userName_1";
//            Session session = sessionFactory.openSession();
//            Query query = session.createQuery(hql);
//            System.out.println("222222222222222222222222222222222222222222222222222222222");
//            query.setParameter("userName_1",userName);
//            Users users = (Users) query;
//            
//            session.close();
//            System.out.println("11111111111111111111111111111111111111111111111111111111");
//            System.out.println(users.getUserName());
//            
//
//        }catch(Exception e){
//        
//        }
//
//        return false;
//        
//    }


    

    

    
    
}

