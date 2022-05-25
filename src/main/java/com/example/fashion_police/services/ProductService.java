package com.example.fashion_police.services;
import com.example.fashion_police.FashionPoliceApplication;
import com.example.fashion_police.models.Image;
import com.example.fashion_police.models.Product;
import com.example.fashion_police.models.User;
import com.example.fashion_police.repositories.ProductRepository;
import com.example.fashion_police.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.security.Principal;
import java.util.*;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class ProductService {
    private final ProductRepository productRepository;
    private final UserRepository userRepository;

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

    public void saveProduct(Principal principal, Product product, MultipartFile file) throws IOException {
        product.setUser(getUserByPrincipal(principal));
        Image image;
        if (file.getSize() != 0) {
            image = toImageEntity(file);
            product.addImageToProduct(image);
        }
        log.info("Saving new Product. Title: {}; Author: {}", product.getTitle(), product.getUser().getEmail());
        productRepository.save(product);
    }

    public User getUserByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }

    public static Image toImageEntity(MultipartFile file) throws IOException {
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

    public static String get_colour_name(ArrayList<Integer> a) {
        Map<String, ArrayList<Integer>> mincolors = new HashMap<>();
        for (String key : FashionPoliceApplication.outfitcolors.keySet()) {
            ArrayList<Integer> rgb = FashionPoliceApplication.outfitcolors.get(key);
            int rd = (rgb.get(0) - a.get(0))*(rgb.get(0) - a.get(0));
            int gd = (rgb.get(1) - a.get(1))*(rgb.get(1) - a.get(1));
            int bd = (rgb.get(2) - a.get(2))*(rgb.get(2) - a.get(2));
            mincolors.put(key, new ArrayList<>(Arrays.asList(rd,gd,bd)));
        }
        int minimum = 195075 + 1;
        String minimum_color = "unknown";
        for (String key : mincolors.keySet()) {
            ArrayList<Integer> rgb = mincolors.get(key);
            if (rgb.get(0) + rgb.get(1) + rgb.get(2) <= minimum) {
                minimum = rgb.get(0) + rgb.get(1) + rgb.get(2);
                minimum_color = key;
            }
        }
        return minimum_color;
    }
    public static ArrayList<Integer> hexToRGB(String hexcolor) {
        int r = Color.decode(hexcolor).getRed();
        int g = Color.decode(hexcolor).getGreen();
        int b = Color.decode(hexcolor).getBlue();
        return new ArrayList<>(Arrays.asList(r,g,b));
    }
    public static String getHexColor(BufferedImage image) {

        Map<Integer, Integer> colorMap = new HashMap<>();
        int height = image.getHeight();
        int width = image.getWidth();

        for (int i = 0; i < width; i++) {
            for (int j = 0; j < height; j++) {
                int rgb = image.getRGB(i, j);
                if (!isGray(getRGBArr(rgb))) {
                    Integer counter = colorMap.get(rgb);
                    if (counter == null) {
                        counter = 0;
                    }
                    colorMap.put(rgb, ++counter);
                }
            }
        }

        return getMostCommonColor(colorMap);
    }
    private static String getMostCommonColor(Map<Integer, Integer> map) {
        List<Map.Entry<Integer, Integer>> list = new LinkedList<>(map.entrySet());

        Collections.sort(list, (Map.Entry<Integer, Integer> obj1, Map.Entry<Integer, Integer> obj2)
                -> ((Comparable) obj1.getValue()).compareTo(obj2.getValue()));

        Map.Entry<Integer, Integer> entry = list.get(list.size() - 1);
        int[] rgb = getRGBArr(entry.getKey());

        return "#" + Integer.toHexString(rgb[0])
                + Integer.toHexString(rgb[1])
                + Integer.toHexString(rgb[2]);
    }
    private static int[] getRGBArr(int pixel) {
        int alpha = (pixel >> 24) & 0xff;
        int red = (pixel >> 16) & 0xff;
        int green = (pixel >> 8) & 0xff;
        int blue = (pixel) & 0xff;

        return new int[]{red, green, blue};
    }
    private static boolean isGray(int[] rgbArr) {
        int rgDiff = rgbArr[0] - rgbArr[1];
        int rbDiff = rgbArr[0] - rgbArr[2];
        int tolerance = 10;
        if (rgDiff > tolerance || rgDiff < -tolerance) {
            if (rbDiff > tolerance || rbDiff < -tolerance) {
                return false;
            }
        }
        if (rgbArr[0] + rgbArr[1] + rgbArr[2] <= 90) {
            return false;
        }
        return true;
    }
}