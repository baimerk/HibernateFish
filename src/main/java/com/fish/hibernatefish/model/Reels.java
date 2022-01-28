package com.fish.hibernatefish.model;


import javax.persistence.*;

@Entity
@Table(name = "reels")
public class Reels {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String modelName; //продаваемое имя модели
    private String bodyMaterial; // материал из которого изготовлена тело катушки
    private String bearings; // количество подшипников
    private String familyType; // тип семейства моделей
    private String handle; // расположение ручки управления
    private String spoolMaterial; // материал шпули
    private String models; // тип размера катушки (легкая, средняя, большая и тп) размерность.\
    private String waterType;

    public Reels() {
    }

    public Reels(String modelName, String bodyMaterial, String bearings, String familyType, String handle, String spoolMaterial, String models, String waterType) {
        this.modelName = modelName;
        this.bodyMaterial = bodyMaterial;
        this.bearings = bearings;
        this.familyType = familyType;
        this.handle = handle;
        this.spoolMaterial = spoolMaterial;
        this.models = models;
        this.waterType = waterType;
    }

    public String getWaterType() {
        return waterType;
    }

    public void setWaterType(String waterType) {
        this.waterType = waterType;
    }

    public String getModelName() {
        return modelName;
    }

    public void setModelName(String modelName) {
        this.modelName = modelName;
    }

    public String getBodyMaterial() {
        return bodyMaterial;
    }

    public void setBodyMaterial(String bodyMaterial) {
        this.bodyMaterial = bodyMaterial;
    }

    public String getBearings() {
        return bearings;
    }

    public void setBearings(String bearings) {
        this.bearings = bearings;
    }

    public String getFamilyType() {
        return familyType;
    }

    public void setFamilyType(String familyType) {
        this.familyType = familyType;
    }

    public String getHandle() {
        return handle;
    }

    public void setHandle(String handle) {
        this.handle = handle;
    }

    public String getSpoolMaterial() {
        return spoolMaterial;
    }

    public void setSpoolMaterial(String spoolMaterial) {
        this.spoolMaterial = spoolMaterial;
    }

    public String getModels() {
        return models;
    }

    public void setModels(String models) {
        this.models = models;
    }
}
