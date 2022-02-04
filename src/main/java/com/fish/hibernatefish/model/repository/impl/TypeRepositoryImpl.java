package com.fish.hibernatefish.model.repository.impl;

import com.fish.hibernatefish.config.ConfigSessionFactory;
import com.fish.hibernatefish.model.Rods;
import com.fish.hibernatefish.model.repository.BaseRepository;
import org.hibernate.Session;

import java.util.List;

public class TypeRepositoryImpl implements BaseRepository<Rods> {
    @Override
    public List<Rods> findAll() {
        Session session = ConfigSessionFactory.getSessionFactory().openSession();
        return session.createQuery("from Rods ").getResultList();
    }

    @Override
    public Rods findById(long id) {
        return null;
    }

    @Override
    public boolean create(Rods entity) {
        return false;
    }

    @Override
    public Rods update(Rods entity) {
        return null;
    }

    @Override
    public boolean deleteById(long id) {
        return false;
    }

    @Override
    public Rods findByLoginAndPassword(String login, String password) {
        return null;
    }

    @Override
    public List<Rods> findAllType() {
        return null;
    }
}
