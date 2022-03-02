package com.fish.hibernatefish.model.repository.impl;

import com.fish.hibernatefish.config.ConfigSessionFactory;
import com.fish.hibernatefish.model.RodsCharacter;
import com.fish.hibernatefish.model.repository.BaseRepository;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class RodsRepositoryImpl implements BaseRepository<RodsCharacter> {

    @Override
    public List<RodsCharacter> findAllType(){
        Session session = ConfigSessionFactory.getSessionFactory().openSession();
        return session.createQuery("from RodsCharacter where modelType = 0").getResultList();
    }

    @Override
    public List<RodsCharacter> findAllType1() {
        return null;
    }

    @Override
    public List<RodsCharacter> findAllType2() {
        return null;
    }

    @Override
    public List<RodsCharacter> findAllType3() {
        return null;
    }

    @Override
    public List<RodsCharacter> findAllType4() {
        return null;
    }

    @Override
    public List<RodsCharacter> findAll() {
        Session session = ConfigSessionFactory.getSessionFactory().openSession();
        return session.createQuery("from RodsCharacter ").getResultList();
    }

    @Override
    public RodsCharacter findById(long id) {
        Session session = ConfigSessionFactory.getSessionFactory().openSession();
        return session.get(RodsCharacter.class, id);
    }

    @Override
    public boolean create(RodsCharacter entity) {
        Transaction transaction = null;
        try (Session session = ConfigSessionFactory.getSessionFactory().openSession();){
            transaction = session.beginTransaction();
            session.save(entity);
            transaction.commit();
        } catch (Exception exception){
            transaction.rollback();
        }
        return true;
    }

    @Override
    public RodsCharacter update(RodsCharacter entity) {
        Transaction transaction = null;
        try (Session session = ConfigSessionFactory.getSessionFactory().openSession();){
            transaction = session.beginTransaction();
            session.update(entity);
            transaction.commit();
            return session.get(RodsCharacter.class, entity.getId());
        } catch (Exception exception){
            if (transaction != null) {
                transaction.rollback();
            }
        }
        return entity;
    }

    @Override
    public boolean deleteById(long id) {
        Transaction transaction = null;
        try (Session session = ConfigSessionFactory.getSessionFactory().openSession()){
            transaction = session.beginTransaction();
            RodsCharacter rodsCharacter = session.get(RodsCharacter.class, id);
            if (rodsCharacter != null){
                session.delete(rodsCharacter);
                transaction.commit();
                return true;
            }
        } catch (Exception ex) {
            transaction.rollback();
        }

        return false;
    }

    @Override
    public RodsCharacter findByLoginAndPassword(String login, String password) {
        return null;
    }
}
