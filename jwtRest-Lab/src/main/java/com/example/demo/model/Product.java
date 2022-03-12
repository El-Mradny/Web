package com.example.demo.model;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
public class Product {
    private Long id;
    private String name;
    private long price;
    private String sunlight;
    private String water;
    private String temperature;
    private String measures;
    private String category;
    private long quantity;
    private Timestamp date;
    private String image;
    private String description;
    private Long soldcount;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    public Long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Basic
    @Column(name = "NAME")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "PRICE")
    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    @Basic
    @Column(name = "SUNLIGHT")
    public String getSunlight() {
        return sunlight;
    }

    public void setSunlight(String sunlight) {
        this.sunlight = sunlight;
    }

    @Basic
    @Column(name = "WATER")
    public String getWater() {
        return water;
    }

    public void setWater(String water) {
        this.water = water;
    }

    @Basic
    @Column(name = "TEMPERATURE")
    public String getTemperature() {
        return temperature;
    }

    public void setTemperature(String temperature) {
        this.temperature = temperature;
    }

    @Basic
    @Column(name = "MEASURES")
    public String getMeasures() {
        return measures;
    }

    public void setMeasures(String measures) {
        this.measures = measures;
    }

    @Basic
    @Column(name = "CATEGORY")
    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    @Basic
    @Column(name = "QUANTITY")
    public long getQuantity() {
        return quantity;
    }

    public void setQuantity(long quantity) {
        this.quantity = quantity;
    }

    @Basic
    @Column(name = "DATE")
    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }

    @Basic
    @Column(name = "IMAGE")
    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Basic
    @Column(name = "DESCRIPTION")
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(name = "SOLDCOUNT")
    public Long getSoldcount() {
        return soldcount;
    }

    public void setSoldcount(Long soldcount) {
        this.soldcount = soldcount;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Product product = (Product) o;
        return price == product.price && quantity == product.quantity && Objects.equals(id, product.id) && Objects.equals(name, product.name) && Objects.equals(sunlight, product.sunlight) && Objects.equals(water, product.water) && Objects.equals(temperature, product.temperature) && Objects.equals(measures, product.measures) && Objects.equals(category, product.category) && Objects.equals(date, product.date) && Objects.equals(image, product.image) && Objects.equals(description, product.description) && Objects.equals(soldcount, product.soldcount);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, price, sunlight, water, temperature, measures, category, quantity, date, image, description, soldcount);
    }
}
