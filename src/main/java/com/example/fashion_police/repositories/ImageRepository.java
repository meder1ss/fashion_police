package com.example.fashion_police.repositories;

import com.example.fashion_police.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository<Image, Long> {}
