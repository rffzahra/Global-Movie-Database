/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hibernate.eao;

import com.hibernate.entity.UserPurchase;
import com.hibernate.util.HibernateUtil;
import java.util.Date;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class UserPurchaseEaoImpl implements UserPurchaseEao {

    SessionFactory sessionFactory;

    public UserPurchaseEaoImpl() {
        sessionFactory = HibernateUtil.getSessionFactory();
    }

    @Override
    public void create(UserPurchase userPurchase) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        session.persist(userPurchase);

        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void saveOrUpdate(UserPurchase userPurchase) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        session.saveOrUpdate(userPurchase);

        session.getTransaction().commit();
        session.close();
    }

    @Override
    public boolean UserPurchaseIn(String userPurchName, String movieName, String moviePrice, Date purchaseDate) {
        UserPurchase usphs = new UserPurchase(userPurchName, movieName, moviePrice, purchaseDate);
        System.out.println(userPurchName);
        System.out.println(movieName);
        boolean bstate = false;
        try {
            Session session = sessionFactory.openSession();
            session.beginTransaction();

            session.saveOrUpdate(usphs);

            session.getTransaction().commit();
            session.close();

            bstate = true;

        } catch (Exception e) {
        }

        return bstate;

    }

    @Override
    public List<UserPurchase> getPurchaseDetails(String filmName) {
        List<UserPurchase> purchesList = null;

        String hql = "FROM UserPurchase u WHERE u.moviePurchaseName= :filmName_q";

        Session session = sessionFactory.openSession();

        Query query = session.createQuery(hql);
        System.out.println(query);

        query.setParameter("filmName_q", filmName);

        purchesList = query.list();

        session.close();

        return purchesList;

    }
//
//    @Override
//    public boolean UserPurchaseCheck(String movieName, String purchaseUserName) {
//
//        boolean bstate = false;
//        
//        System.out.println("aqaqqaqaaqaqaqaaqqaqaqaqaqaqaqaqaqaqaqa");
//
//        try {
//            Session session = sessionFactory.openSession();
//            System.out.println(movieName);
//            UserPurchase usrpchs = (UserPurchase) session.get(UserPurchase.class, purchaseUserName);
//
//            if (usrpchs.getUserPurchaseName().equals(purchaseUserName) && usrpchs.getMoviePurchaseName().equals(movieName)) {
//                bstate = true;
//                return bstate;
//            }
//
//        }catch(Exception e){}
//
//        return bstate;
//    }

    @Override
    public List<UserPurchase> getUserPurchaseCheck(String purchaseUserName) {
        List<UserPurchase> purchesfilmList = null;
        
        System.out.println("/a/a/a/a/a//a/a/a/a//a/a/a/a/a/a/a//a/a/a/a/");
        System.out.println(purchaseUserName);
        String hql = "FROM UserPurchase u WHERE u.userPurchaseName= :purchaseName";

        Session session = sessionFactory.openSession();

        Query query = session.createQuery(hql);
        System.out.println(query);

        query.setParameter("purchaseName", purchaseUserName);

        purchesfilmList = query.list();

        session.close();

        return purchesfilmList;
    }

}
