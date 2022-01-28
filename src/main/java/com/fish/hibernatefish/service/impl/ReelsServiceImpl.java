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
    public Reels findById(long id) {
        return null;
    }

    @Override
    public boolean create(Reels entity) {
        return repository.create(entity);
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
