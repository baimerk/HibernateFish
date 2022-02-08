package com.fish.hibernatefish.service;

import com.fish.hibernatefish.model.Reels;

import java.util.List;

public interface BaseService<T> {
    List<T> findAll(); // all rods and reels
    List<T> findAllType(); // rods and reels type 0 - it's Bluebird
    List<T> findAllType1(); // rods and reels type 1 - it's Arena
    List<T> findAllType2(); // rods and reels type 2 - it's Hurricane
    List<T> findAllType3(); // rods and reels type 3 - it's Sapphire
    List<T> findAllType4(); // rods and reels type 4 - it's Sirius
    T findById(long id);
    boolean create(T entity);
    T update(T entity);
    boolean deleteById(long id);
    T findByLoginAndPassword(String login, String password);

}
