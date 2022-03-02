package com.fish.hibernatefish.model;

import org.apache.taglibs.standard.lang.jstl.UnaryMinusOperator;

import javax.persistence.*;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;

@Entity
@Table(name = "fishman")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String name;
    @Column(name = "Фамилия")
    private String lastName;

    private String address;
    private boolean isMarried;

    private String login;
    private String password;
    private int age;

    @Enumerated(EnumType.ORDINAL)
    private Role role;

    //значение атрибута mappedBy - имя поля связи в классе сущности-владельца отношений
    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private Set<RodsCharacter> rods;

    public Set<RodsCharacter> getRods() {
        return rods;
    }

    public void setRods(Set<RodsCharacter> rods) {
        this.rods = rods;
    }

    //@ManyToMany(cascade = CascadeType.ALL)
    //@JoinTable(name = "user_rods",
            //foreign key for User in user_rods table
            //joinColumns = @JoinColumn(name = "user_id"),
            //foreign key for other side - user in user_rods table
            //inverseJoinColumns = @JoinColumn(name = "rod_id"))


    public User() {
    }

    public User(long id, String name, String lastName, String address, boolean isMarried, Role role) {
        this.id = id;
        this.name = name;
        this.lastName = lastName;
        this.address = address;
        this.isMarried = isMarried;
        this.role = role;
    }

    public User(long id, String name, String lastName, String address, boolean isMarried, String login, String password, int age, Role role) {
        this.id = id;
        this.name = name;
        this.lastName = lastName;
        this.address = address;
        this.isMarried = isMarried;
        this.login = login;
        this.password = password;
        this.age = age;
        this.role = role;
    }

    public User(String name, String lastName, int age, String address, boolean isMarried) {
        this.name = name;
        this.lastName = lastName;
        this.age = age;
        this.address = address;
        this.isMarried = isMarried;
    }

    public User(String name, String lastName, String address, boolean isMarried, String login, String password) {
        this.name = name;
        this.lastName = lastName;
        this.address = address;
        this.isMarried = isMarried;
        this.login = login;
        this.password = password;
    }

    public User(String name, String lastName, String address, boolean isMarried) {
        this.name = name;
        this.lastName = lastName;
        this.address = address;
        this.isMarried = isMarried;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public boolean isMarried() {
        return isMarried;
    }

    public void setMarried(boolean married) {
        isMarried = married;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return id == user.id;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
