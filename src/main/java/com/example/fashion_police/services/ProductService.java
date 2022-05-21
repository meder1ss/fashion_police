package com.example.fashion_police.services;
import com.example.fashion_police.FashionPoliceApplication;
import com.example.fashion_police.models.Image;
import com.example.fashion_police.models.Product;
import com.example.fashion_police.repositories.ProductRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class ProductService {
    private final ProductRepository productRepository;

    public List<Product> listProducts(String title) {
        if (title != null) return productRepository.findByTitle(title);
        return productRepository.findAll();
    }

    public Product Outfit(String sex, String collection, String color, String style, String type) {
        Product product = complementAnOutfit(sex, collection, color, style, type);
        if (product != null) {
            return product;
        }
        else {
            product = complementAnOutfit(sex, collection, color,"Повседневный", type);
            if (product != null) {
                return product;
            }
            else {
                product = complementAnOutfit("Унисекс", "Деми-сезон", color, "Повседневный", type);
                if (product != null) {
                    return product;
                }
                else {
                    return null;
                }
            }
        }
    }

    public void saveProduct(Product product, MultipartFile file) throws IOException {
        Image image;
        if (file.getSize() != 0) {
            image = toImageEntity(file);
            product.addImageToProduct(image);
        }
        log.info("Saving new Product. Title: {}; Author: {}", product.getTitle(), product.getAuthor());
        productRepository.save(product);
    }

    private Image toImageEntity(MultipartFile file) throws IOException {
        Image image = new Image();
        image.setName(file.getName());
        image.setOriginalFileName(file.getOriginalFilename());
        image.setContentType(file.getContentType());
        image.setSize(file.getSize());
        image.setBytes(file.getBytes());
        return image;
    }

    public void deleteProduct(Long id) {
        productRepository.deleteById(id);
    }

    public Product getProductById(Long id) {
        return productRepository.findById(id).orElse(null);
    }

    public Product complementAnOutfit(String sex, String collection, String color, String style, String type){
        ArrayList<String> complementColors = FashionPoliceApplication.colorstab.get(color);
        for (String newColor : complementColors) {
            Product complementedOutfit = productRepository.findFirstBySexAndCollectionAndTypeAndStyleAndColor(sex, collection, type, style, newColor);
            if (complementedOutfit != null) {
                return complementedOutfit;
            }
        }
        return null;
    }
}