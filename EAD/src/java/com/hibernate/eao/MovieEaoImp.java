/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hibernate.eao;

import com.hibernate.entity.Movie;

import com.hibernate.util.HibernateUtil;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Thisara
 */
public class MovieEaoImp implements MovieEao {

    SessionFactory sessionFactory;

    public MovieEaoImp() {
        sessionFactory = HibernateUtil.getSessionFactory();
    }

    @Override
    public void create(Movie movie) {

        Session session = sessionFactory.openSession();
        session.beginTransaction();

        session.persist(movie);

        session.getTransaction().commit();
        session.close();

    }

    @Override
    public void saveOrUpdate(Movie movie) {

        Session session = sessionFactory.openSession();
        session.beginTransaction();

        session.saveOrUpdate(movie);

        session.getTransaction().commit();
        session.close();
    }

    @Override
    public boolean FilmAdd(String movieName, String runtime, String origin, String price, String link) {

        Movie mv = new Movie(movieName, runtime, origin, price, link);

        boolean bstate = false;

        try {

            Session session = sessionFactory.openSession();
            session.beginTransaction();

            session.saveOrUpdate(mv);

            session.getTransaction().commit();
            session.close();

            bstate = true;

        } catch (Exception e) {
        }

        return bstate;
    }

    @Override
    public List<Movie> getMovies() {
        List<Movie> movieList = null;

        try {
            String hql = "FROM Movie m";
            Session session = sessionFactory.openSession();
            session.beginTransaction();
            movieList = session.createQuery(hql).list();
            session.close();

            return movieList;

        } catch (Exception e) {
        }

        return movieList;

    }

    @Override
    public void delete(Movie movie) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        String hql = "FROM Movie m WHERE m.movieName = :movie_nm";
        Query query = session.createQuery(hql);
        query.setParameter("movie_nm", movie.getMovieName());
        
        movie = (Movie) query.list().get(0);

        session.delete(movie);

        session.getTransaction().commit();
        session.close();
    }

}
