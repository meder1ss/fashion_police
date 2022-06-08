package com.example.fashion_police;

import com.example.fashion_police.services.ColorService;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

@SpringBootApplication
public class FashionPoliceApplication {
    public static void main(String[] args) {
        ColorService.colorGames();

        SpringApplication.run(FashionPoliceApplication.class, args);
    }
}
