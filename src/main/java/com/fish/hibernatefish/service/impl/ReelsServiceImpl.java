package com.fish.hibernatefish.service.impl;

import com.fish.hibernatefish.model.Reels;
import com.fish.hibernatefish.model.repository.BaseRepository;
import com.fish.hibernatefish.model.repository.impl.ReelRepositoryImpl;
import com.fish.hibernatefish.service.BaseService;

import java.util.List;

public class ReelsServiceImpl implements BaseService<Reels> {

    private BaseRepository<Reels> repository = new ReelRepositoryImpl();

    @Override
    public List<Reels> findAll() {
        return repository.findAll();
    }

    @Override
    public List<Reels> findAllType() {
        return repository.findAllType();
    }

    @Override
    public List<Reels> findAllType1(){
        return repository.findAllType1();
    }

    @Override
    public List<Reels> findAllType2() {
        return repository.findAllType2();
    }

    @Override
    public List<Reels> findAllType3() {
        return repository.findAllType3();
    }

    @Override
    public List<Reels> findAllType4() {
        return repository.findAllType4();
    }

    @Override
    public Reels findById(long id) { return repository.findById(id); }

    @Override
    public boolean create(Reels entity) {
        return repository.create(entity);
    }

    @Override
    public Reels update(Reels entity) {
        return repository.update(entity);
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
