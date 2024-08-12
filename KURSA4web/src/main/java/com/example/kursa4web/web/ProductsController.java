package com.example.kursa4web.web;

import com.example.kursa4web.repositories.ProductsRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProductsController {
    private final ProductsRepository productsRepository;

    public ProductsController(ProductsRepository productsRepository) {
        this.productsRepository = productsRepository;
    }

    @GetMapping("/products")
    public String showProducts(Model model) {
        model.addAttribute("products", productsRepository.findAll());
        return "products";
    }

}
