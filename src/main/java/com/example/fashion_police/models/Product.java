package com.example.fashion_police.models;

import com.example.fashion_police.FashionPoliceApplication;
import com.example.fashion_police.services.ProductService;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.imageio.ImageIO;
import javax.persistence.*;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.*;
import java.util.List;

@Entity
@Table(name = "items")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;
    @Column(name = "title")
    private String title;
    @Column(name = "description", columnDefinition = "text")
    private String description;
    @Column(name = "price")
    private int price;
    @Column(name = "company")
    private String company;
    @Column(name = "collection")
    private String collection;
    @Column(name = "style")
    private String style;
    @Column(name = "type")
    private String type;
    @Column(name = "color")
    private String color;
    @Column(name = "sex")
    private String sex;

    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "product")
    private Image image;
    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.LAZY)
    @JoinColumn
    private User user;
    private LocalDateTime dateOfCreated;

    @PrePersist
    private void init() {
        dateOfCreated = LocalDateTime.now();
    }

    public void addImageToProduct(Image image1) throws IOException {
        image1.setProduct(this);
        image = image1;

        ByteArrayInputStream is = new ByteArrayInputStream(image1.getBytes());
        BufferedImage newBi = ImageIO.read(is);
        String color1 = ProductService.getHexColor(newBi);

        ArrayList<Integer> rgbArr = ProductService.hexToRGB(color1);
        color = ProductService.get_colour_name(rgbArr);
    }
}