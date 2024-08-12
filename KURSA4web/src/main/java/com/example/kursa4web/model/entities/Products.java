package com.example.kursa4web.model.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;

import java.time.LocalDate;

@Entity
public class Products {

    private Long id;

    @jakarta.persistence.Id
    @GeneratedValue(strategy = GenerationType.UUID)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    private String product_name;
    private String company;
    private LocalDate revaluation_date;
    private LocalDate return_date;
    private String warehouse;

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public LocalDate getRevaluation_date() {
        return revaluation_date;
    }

    public void setRevaluation_date(LocalDate revaluation_date) {
        this.revaluation_date = revaluation_date;
    }

    public LocalDate getReturn_date() {
        return return_date;
    }

    public void setReturn_date(LocalDate return_date) {
        this.return_date = return_date;
    }

    public String getWarehouse() {
        return warehouse;
    }

    public void setWarehouse(String warehouse) {
        this.warehouse = warehouse;
    }

    // getters and setters
}
