package com.fish.hibernatefish.model.repository;

import java.util.List;

public interface BaseRepository <T>{
    List<T> findAll();
    List<T> findAllType();
    List<T> findAllType1();
    List<T> findAllType2(); // rods and reels type 2 - it's Hurricane
    List<T> findAllType3(); // rods and reels type 3 - it's Sapphire
    List<T> findAllType4(); // rods and reels type 4 - it's Sirius
    T findById(long id);
    boolean create(T entity);
    T update(T entity);
    boolean deleteById(long id);
    T findByLoginAndPassword(String login, String password);

}
