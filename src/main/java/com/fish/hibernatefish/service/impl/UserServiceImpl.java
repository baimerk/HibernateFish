package com.fish.hibernatefish.service.impl;

import com.fish.hibernatefish.model.User;
import com.fish.hibernatefish.model.repository.BaseRepository;
import com.fish.hibernatefish.model.repository.impl.UserRepositoryImpl;
import com.fish.hibernatefish.service.BaseService;

import java.util.List;

public class UserServiceImpl implements BaseService<User> {

    private BaseRepository<User> repository = new UserRepositoryImpl();

    @Override
    public List<User> findAll() {
        return repository.findAll();
    }

    @Override
    public User findById(long id) {
        return repository.findById(id);
    }

    @Override
    public boolean create(User entity) {
        return repository.create(entity);
    }

    @Override
    public User update(User entity) {
        return repository.update(entity);
    }

    @Override
    public boolean deleteById(long id) {
        return repository.deleteById(id);
    }

    @Override
    public User findByLoginAndPassword(String login, String password) {
        return repository.findByLoginAndPassword(login, password);
    }

    @Override
    public List<User> findAllType() {
        return null;
    }
}

