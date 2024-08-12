package com.example.kursa4web.repositories;

import com.example.kursa4web.model.entities.Products;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductsRepository extends JpaRepository<Products, String> {
}
