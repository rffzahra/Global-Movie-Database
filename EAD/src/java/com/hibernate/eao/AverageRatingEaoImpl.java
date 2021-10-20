/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hibernate.eao;

import com.hibernate.entity.AverageRating;
import com.hibernate.util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class AverageRatingEaoImpl implements AverageRatingEao {

    SessionFactory sessionFactory;

    public AverageRatingEaoImpl() {
        sessionFactory = HibernateUtil.getSessionFactory();
    }

    @Override
    public boolean rateAdd(String rateUserNm, String filmName, int rateNm) {
        AverageRating avrRt = new AverageRating(rateUserNm, filmName, rateNm);

        System.out.println(rateUserNm);
        System.out.println(rateNm);
        System.out.println(filmName);

        boolean bstate = false;

        try {

            Session session = sessionFactory.openSession();
            session.beginTransaction();

            session.saveOrUpdate(avrRt);

            session.getTransaction().commit();
            session.close();

            bstate = true;

        } catch (Exception e) {
        }

        return bstate;

    }

    @Override
    public List<AverageRating> getRate(String filmName) {
        List<AverageRating> avrList = null;

        System.out.println(filmName+"1111");

        String hql = "FROM AverageRating avr WHERE avr.movieName= :filmName_q";

        Session session = sessionFactory.openSession();

        Query query = session.createQuery(hql);
        
        System.out.println(query);

        query.setParameter("filmName_q", filmName);

        avrList = query.list();
        
        System.out.println(avrList);

        session.close();

        return avrList;

    }

   

}
