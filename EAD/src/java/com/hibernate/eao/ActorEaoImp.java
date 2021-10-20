
package com.hibernate.eao;

import com.hibernate.entity.Actors;
import com.hibernate.util.HibernateUtil;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class ActorEaoImp implements ActorEao{
    
    SessionFactory sessionFactory;

    public ActorEaoImp() {
        
        sessionFactory = HibernateUtil.getSessionFactory();
    }

    @Override
    public void create(Actors actors) {
        Session session = sessionFactory.openSession(); 
        session.beginTransaction(); 

        session.persist(actors); 
        
        session.getTransaction().commit(); 
        session.close();
        
    }

    @Override
    public void saveOrUpdate(Actors actors) {
        
        Session session = sessionFactory.openSession(); 
        session.beginTransaction(); 

        session.saveOrUpdate(actors); 
        
        session.getTransaction().commit(); 
        session.close();
    }

    @Override
    public List<Actors> getActors() {
        List<Actors> movieList = null;
        
        try{
            String hql = "FROM Actors act";
            Session session = sessionFactory.openSession();
            session.beginTransaction();
            movieList = session.createQuery(hql).list();
            session.close();
            
            return movieList;
            
        }catch(Exception e){}
        
        
        return movieList;
    }

    @Override
    public void delete(Actors actors) {
        Session session = sessionFactory.openSession(); 
        session.beginTransaction(); 

        session.delete(actors); 
        
        session.getTransaction().commit(); 
        session.close();
    }
    
    
    
    
    
    
}
