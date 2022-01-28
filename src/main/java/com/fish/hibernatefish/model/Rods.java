package com.fish.hibernatefish.model;


import javax.persistence.*;

@Entity
@Table(name = "rods")
public class Rods {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private String waterType;

    @Enumerated(EnumType.ORDINAL)
    private Conf rods;

    public Rods() {
    }

    public Rods(String waterType, Conf rods) {
        this.waterType = waterType;
        this.rods = rods;
    }

    public Rods(long id, String waterType, Conf rods) {
        this.id = id;
        this.waterType = waterType;
        this.rods = rods;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getWaterType() {
        return waterType;
    }

    public void setWaterType(String waterType) {
        this.waterType = waterType;
    }

    public Conf getRods() {
        return rods;
    }

    public void setRods(Conf rods) {
        this.rods = rods;
    }

}
