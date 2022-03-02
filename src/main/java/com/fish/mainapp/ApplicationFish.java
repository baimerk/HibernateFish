package com.fish.mainapp;

import com.fish.hibernatefish.model.RodsCharacter;
import com.fish.hibernatefish.model.User;
import com.fish.hibernatefish.service.BaseService;
import com.fish.hibernatefish.service.impl.RodsServiceImpl;
import com.fish.hibernatefish.service.impl.UserServiceImpl;

public class ApplicationFish {
    public static void  main(String[] args){
        BaseService<User> service = new UserServiceImpl();
        BaseService<RodsCharacter> service1 = new RodsServiceImpl();
        RodsCharacter rodsCharacter = new RodsCharacter("BB1-804L-T", "i2.44", "Light", "3-12", "#0.4-0.8 PE", "Fast", "109", "4", "65");
        User user = new User("Kim", "Maksim", "Moscow", true, "K", "123");
        service.create(user);
        service1.create(rodsCharacter);

    }
}
