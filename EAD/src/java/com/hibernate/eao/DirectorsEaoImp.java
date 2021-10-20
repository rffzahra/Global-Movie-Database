
package com.hibernate.eao;

import com.hibernate.entity.Directors;
import com.hibernate.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;


public class DirectorsEaoImp implements DirectorsEao{
    
    SessionFactory sessionFactory;
    
    public DirectorsEaoImp() { 
        sessionFactory = HibernateUtil.getSessionFactory(); 
    }

    @Override
    public void create(Directors directors) {
        Session session = sessionFactory.openSession(); 
        session.beginTransaction(); 

        session.persist(directors); 
        
        session.getTransaction().commit(); 
        session.close();
    }

    @Override
    public void saveOrUpdate(Directors directors) {
        
        Session session = sessionFactory.openSession(); 
        session.beginTransaction(); 

        session.saveOrUpdate(directors); 
        
        session.getTransaction().commit(); 
        session.close();
        
    }

    @Override
    public void delete(Directors directors) {
        Session session = sessionFactory.openSession(); 
        session.beginTransaction(); 

        session.delete(directors); 
        
        session.getTransaction().commit(); 
        session.close();
    }

    
    
    
    
}
