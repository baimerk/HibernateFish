package com.fish.hibernatefish.model.repository.impl;

import com.fish.hibernatefish.config.ConfigSessionFactory;
import com.fish.hibernatefish.model.Reels;
import com.fish.hibernatefish.model.repository.BaseRepository;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class ReelRepositoryImpl implements BaseRepository<Reels> {
    @Override
    public List<Reels> findAll() {
        Session session = ConfigSessionFactory.getSessionFactory().openSession();
        return session.createQuery("from Reels").getResultList();
    }

    @Override
    public List<Reels> findAllType() { // Blue Bird = 0 in conf
        Session session = ConfigSessionFactory.getSessionFactory().openSession();
        return session.createQuery("from Reels where model = 0").getResultList();
    }

    @Override
    public List<Reels> findAllType1(){ // Arena = 1 in conf
        Session session = ConfigSessionFactory.getSessionFactory().openSession();
        return session.createQuery("from Reels where model = 1").getResultList();
    }

    @Override
    public List<Reels> findAllType2() {
        Session session = ConfigSessionFactory.getSessionFactory().openSession();
        return session.createQuery("from Reels where model = 2").getResultList();
    }

    @Override
    public List<Reels> findAllType3() {
        return null;
    }

    @Override
    public List<Reels> findAllType4() {
        return null;
    }

    @Override
    public Reels findById(long id) {
        return null;
    }

    @Override
    public boolean create(Reels entity) {
        Transaction transaction = null;
        try (Session session = ConfigSessionFactory.getSessionFactory().openSession()){
            transaction = session.beginTransaction();
            session.save(entity);
            transaction.commit();
        } catch (Exception exception) {
            transaction.rollback();
        }
        return true;
    }

    @Override
    public Reels update(Reels entity) {
        return null;
    }

    @Override
    public boolean deleteById(long id) {
        return false;
    }

    @Override
    public Reels findByLoginAndPassword(String login, String password) {
        return null;
    }

}
