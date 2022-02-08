package com.fish.hibernatefish.model;


import javax.persistence.*;

@Entity
@Table(name = "reels")
public class Reels {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String size; //размер модели
    private String nylonLine; // длина шнура рекомендуемая к применению
    private String ballBearings; // количество подшипников
    private String gearRatio; // тип размера катушки (легкая, средняя, большая и тп) размерность.\
    private String weight; // вес
    private String lineRetrieve; // извлекаемая длина шнура
    private String spoolMaterial; // материал шпули

    private String price;@Enumerated(EnumType.ORDINAL)
    private Conf model;


    public Reels() {
    }

    public Reels(String size, String nylonLine, String ballBearings, String gearRatio, String weight, String lineRetrieve, String spoolMaterial, String price, Conf model) {
        this.size = size;
        this.nylonLine = nylonLine;
        this.ballBearings = ballBearings;
        this.gearRatio = gearRatio;
        this.weight = weight;
        this.lineRetrieve = lineRetrieve;
        this.spoolMaterial = spoolMaterial;
        this.price = price;
        this.model = model;
    }

    public Reels(String size, String nylonLine, String ballBearings, String gearRatio, String weight, String lineRetrieve, String spoolMaterial, String price) {
        this.size = size;
        this.nylonLine = nylonLine;
        this.ballBearings = ballBearings;
        this.gearRatio = gearRatio;
        this.weight = weight;
        this.lineRetrieve = lineRetrieve;
        this.spoolMaterial = spoolMaterial;
        this.price = price;
    }

    public Conf getModel() {
        return model;
    }

    public void setModel(Conf model) {
        this.model = model;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getNylonLine() {
        return nylonLine;
    }

    public void setNylonLine(String nylonLine) {
        this.nylonLine = nylonLine;
    }

    public String getBallBearings() {
        return ballBearings;
    }

    public void setBallBearings(String ballBearings) {
        this.ballBearings = ballBearings;
    }

    public String getGearRatio() {
        return gearRatio;
    }

    public void setGearRatio(String gearRatio) {
        this.gearRatio = gearRatio;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public String getLineRetrieve() {
        return lineRetrieve;
    }

    public void setLineRetrieve(String lineRetrieve) {
        this.lineRetrieve = lineRetrieve;
    }

    public String getSpoolMaterial() {
        return spoolMaterial;
    }

    public void setSpoolMaterial(String spoolMaterial) {
        this.spoolMaterial = spoolMaterial;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Reels reels = (Reels) o;
        return id == reels.id;
    }
}
