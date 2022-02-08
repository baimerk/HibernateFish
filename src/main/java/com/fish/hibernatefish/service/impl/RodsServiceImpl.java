package com.fish.hibernatefish.service.impl;

import com.fish.hibernatefish.model.Reels;
import com.fish.hibernatefish.model.RodsCharacter;
import com.fish.hibernatefish.model.repository.BaseRepository;
import com.fish.hibernatefish.model.repository.impl.RodsRepositoryImpl;
import com.fish.hibernatefish.service.BaseService;

import java.util.List;

public class RodsServiceImpl implements BaseService<RodsCharacter> {
    private BaseRepository<RodsCharacter> repository = new RodsRepositoryImpl();

    @Override
    public List<RodsCharacter> findAllType(){return repository.findAllType();}

    @Override
    public List<RodsCharacter> findAll() {
        return repository.findAll();
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
    public RodsCharacter findById(long id) {
        return repository.findById(id);
    }

    @Override
    public boolean create(RodsCharacter entity) {
        return repository.create(entity);
    }

    @Override
    public RodsCharacter update(RodsCharacter entity) {
        return repository.update(entity);
    }

    @Override
    public boolean deleteById(long id) {
        return false;
    }

    @Override
    public RodsCharacter findByLoginAndPassword(String login, String password) {
        return null;
    }
}
