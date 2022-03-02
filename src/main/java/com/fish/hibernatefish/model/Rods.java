package com.fish.hibernatefish.model;


import javax.persistence.*;

@Entity
@Table(name = "type")
public class Rods {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private String waterType;

    @Enumerated(EnumType.ORDINAL)
    private Conf rodsType;

    public Rods() {
    }

    public Rods(String waterType, Conf rodsType) {
        this.waterType = waterType;
        this.rodsType = rodsType;
    }

    public Rods(long id, String waterType, Conf rodsType) {
        this.id = id;
        this.waterType = waterType;
        this.rodsType = rodsType;
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
        return rodsType;
    }

    public void setRods(Conf rodsType) {
        this.rodsType = rodsType;
    }

}
