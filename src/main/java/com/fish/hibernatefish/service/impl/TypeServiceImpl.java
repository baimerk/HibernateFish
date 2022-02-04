package com.fish.hibernatefish.service.impl;

import com.fish.hibernatefish.model.Rods;
import com.fish.hibernatefish.model.repository.BaseRepository;
import com.fish.hibernatefish.model.repository.impl.TypeRepositoryImpl;
import com.fish.hibernatefish.service.BaseService;

import java.util.List;

public class TypeServiceImpl implements BaseService<Rods> {

    private BaseRepository<Rods> repository = new TypeRepositoryImpl();

    @Override
    public List<Rods> findAll() {
        return repository.findAll();
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
