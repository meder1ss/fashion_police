package com.example.fashion_police.repositories;

import com.example.fashion_police.models.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {
    List<Product> findByTitle(String title);
    //Product findByColor();
    Product findFirstByCollectionAndTypeAndStyleAndColor(String collection, String type, String style, String color);

    /*
    String color = //метод определяющий цвет картинки у product;
    if color == "Red" {
        if ProductRepository.findByColor == "Green" {
            return
        }
        else if ProductRepository.findByColor == "Blue"{
            return
        }
        else if
    }
    */

}
