
package com.hibernate.eao;

import com.hibernate.entity.Genres;
import com.hibernate.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;


public class GenresEaoImp implements GenresEao{
    
    SessionFactory sessionFactory;
        
    public GenresEaoImp() { 
        sessionFactory = HibernateUtil.getSessionFactory(); 
    }
   

    
    @Override
    public void create(Genres genres) {
      
        Session session = sessionFactory.openSession(); 
        session.beginTransaction(); 

        session.persist(genres); 
        
        session.getTransaction().commit(); 
        session.close();
        
    }

    @Override
    public void saveOrUpdate(Genres genres) {
        
        Session session = sessionFactory.openSession(); 
        session.beginTransaction(); 

        session.saveOrUpdate(genres); 
        
        session.getTransaction().commit(); 
        session.close();
    }

    @Override
    public void delete(Genres genres) {
        Session session = sessionFactory.openSession(); 
        session.beginTransaction(); 

        session.delete(genres); 
        
        session.getTransaction().commit(); 
        session.close();
    }
    
    
}
