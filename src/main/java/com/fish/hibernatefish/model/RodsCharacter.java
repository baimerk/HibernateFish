package com.fish.hibernatefish.model;


import javax.persistence.*;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "rods")
public class RodsCharacter {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private String model;
    private String length;
    private String power;
    private String lureTest;
    private String lineTest;
    private String action;
    private String weight;
    private String section;
    private String tLength;

    @Enumerated(EnumType.ORDINAL)
    private Conf modelType;

    @ManyToMany(fetch = FetchType.LAZY, mappedBy = "rods", cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    private Set<User> users;

    public Set<User> getUsers() {
        return users;
    }

    public void setUsers(Set<User> users) {
        this.users = users;
    }

    public RodsCharacter() {
    }

    public RodsCharacter(long id, String model, String length, String power, String lureTest, String lineTest, String action, String weight, String section, String tLength, Conf modelType) {
        this.id = id;
        this.model = model;
        this.length = length;
        this.power = power;
        this.lureTest = lureTest;
        this.lineTest = lineTest;
        this.action = action;
        this.weight = weight;
        this.section = section;
        this.tLength = tLength;
        this.modelType = modelType;
    }

    public RodsCharacter(String model, String length, String power, String lureTest, String lineTest, String action, String weight, String section, String tLength) {
        this.model = model;
        this.length = length;
        this.power = power;
        this.lureTest = lureTest;
        this.lineTest = lineTest;
        this.action = action;
        this.weight = weight;
        this.section = section;
        this.tLength = tLength;
    }

    public RodsCharacter(String model, String length, String power, String lureTest, String lineTest, String action, String weight, String section, String tLength, Conf modelType) {
        this.model = model;
        this.length = length;
        this.power = power;
        this.lureTest = lureTest;
        this.lineTest = lineTest;
        this.action = action;
        this.weight = weight;
        this.section = section;
        this.tLength = tLength;
        this.modelType = modelType;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getLength() {
        return length;
    }

    public void setLength(String length) {
        this.length = length;
    }

    public String getPower() {
        return power;
    }

    public void setPower(String power) {
        this.power = power;
    }

    public String getLureTest() {
        return lureTest;
    }

    public void setLureTest(String lureTest) {
        this.lureTest = lureTest;
    }

    public String getLineTest() {
        return lineTest;
    }

    public void setLineTest(String lineTest) {
        this.lineTest = lineTest;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public String getSection() {
        return section;
    }

    public void setSection(String section) {
        this.section = section;
    }

    public String gettLength() {
        return tLength;
    }

    public void settLength(String tLength) {
        this.tLength = tLength;
    }

    public Conf getModelType() {
        return modelType;
    }

    public void setModelType(Conf modelType) {
        this.modelType = modelType;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        RodsCharacter rodsCharacter = (RodsCharacter) o;
        return id == rodsCharacter.id;
    }

}
