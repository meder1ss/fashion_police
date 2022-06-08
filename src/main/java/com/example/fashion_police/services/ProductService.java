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
    private final SelectionService selectionService;

    public List<Product> listProducts(String title) {
        if (title != null) {
            List<Product> products = productRepository.findAll();
            ArrayList<Product> res = new ArrayList<>();
            for (Product i : products) {
                if ((i.getTitle().toLowerCase()).contains(title.toLowerCase())) {
                    res.add(i);
                }
            }
            return res;
        }
        return productRepository.findAll();
    }

    public Product Outfit(String sex, String collection, String color, String style, String type, String weather) {
        if (!weather.equals("")) {
            float weather_int = Float.parseFloat(weather);

            if (type.equals("Головной убор")) {
                if (weather_int <= 0) {
                    return selectionService.scarfOrHatOrGlovesWeatherLess0(sex, color,style, type);
                }
                if (weather_int >= 1 && weather_int <= 7) {
                    return selectionService.scarfOrHatOrGlovesWeatherBetween1And14Or7(sex, color,style, type);
                }
            }
            if (type.equals("Шарф")) {
                if (weather_int <= 0) {
                    return selectionService.scarfOrHatOrGlovesWeatherLess0(sex, color,style, type);
                }
                if (weather_int >= 1 && weather_int <= 14) {
                    return selectionService.scarfOrHatOrGlovesWeatherBetween1And14Or7(sex, color,style, type);
                }
            }
            if (type.equals("Перчатки")) {
                if (weather_int <= 0) {
                    return selectionService.scarfOrHatOrGlovesWeatherLess0(sex, color,style, type);
                }
                if (weather_int >= 1 && weather_int <= 7) {
                    return selectionService.scarfOrHatOrGlovesWeatherBetween1And14Or7(sex, color,style, type);
                }
            }
            if (type.equals("Верхняя одежда")) {
                if (weather_int <= -20) {
                    return selectionService.outerwearWeatherLess20(sex, color,style, type);
                }
                if (weather_int >= -19 && weather_int <= -10) {
                    return selectionService.outerwearWeatherBetween19And10(sex, color,style, type);
                }
                if (weather_int >= -9 && weather_int <= 0) {
                    return selectionService.outerwearWeatherBetween9And0(sex, color,style, type);
                }
                if (weather_int >= 1 && weather_int <= 7) {
                    return selectionService.outerwearWeatherBetween1And7(sex, color,style, type);
                }
                if (weather_int >= 8 && weather_int <= 14) {
                    return selectionService.outerwearWeatherBetween8And14(sex, color,style, type);
                }
                if (weather_int >= 15 && weather_int <= 18) {
                    return selectionService.outerwearWeatherBetween15And18(sex, color,style, type);
                }
            }
            if (type.equals("Верх")) {
                if (weather_int <= -10) {
                    return selectionService.topWeatherLess10(sex, color,style, type);
                }
                if (weather_int <= 0 && weather_int >= -9) {
                    return selectionService.topWeatherBetween9And0(sex, color,style, type);
                }
                if (weather_int <= 7 && weather_int >= 1) {
                    return selectionService.topWeatherBetween1And7(sex, color,style, type);
                }
                if (weather_int <= 14 && weather_int >= 8) {
                    return selectionService.topWeatherBetween8And14(sex, color,style, type);
                }
                if (weather_int <= 18 && weather_int >= 15) {
                    return selectionService.topWeatherBetween15And18(sex, color,style, type);
                }
                if (weather_int <= 25 && weather_int >= 19) {
                    return selectionService.topWeatherBetween19And25(sex, color,style, type);
                }
                if (weather_int >= 26) {
                    return selectionService.topWeatherMore26(sex, color,style, type);
                }
            }
            if (type.equals("Низ")) {
                if (weather_int <= -10) {
                    return selectionService.pantsWeatherLess10(sex, color,style, type);
                }
                if (weather_int <= 0 && weather_int >= -9) {
                    return selectionService.pantsWeatherBetween9And0(sex, color,style, type);
                }
                if (weather_int <= 7 && weather_int >= 1) {
                    return selectionService.pantsWeatherBetween1And7(sex, color,style, type);
                }
                if (weather_int <= 14 && weather_int >= 8) {
                    return selectionService.pantsWeatherBetween8And14(sex, color,style, type);
                }
                if (weather_int <= 18 && weather_int >= 15) {
                    return selectionService.pantsWeatherBetween15And18(sex, color,style, type);
                }
                if (weather_int <= 25 && weather_int >= 19) {
                    return selectionService.pantsWeatherBetween19And25(sex, color,style, type);
                }
                if (weather_int >= 26) {
                    return selectionService.pantsWeatherMore26(sex, color,style, type);
                }
            }
            if (type.equals("Обувь")) {
                if (weather_int <= -20) {
                    return selectionService.shoesWeatherLess20(sex, color,style, type);
                }
                if (weather_int <= 0 && weather_int >= -19) {
                    return selectionService.shoesWeatherBetween19And0(sex, color,style, type);
                }
                if (weather_int <= 7 && weather_int >= 1) {
                    return selectionService.shoesWeatherBetween1And7(sex, color,style, type);
                }
                if (weather_int <= 18 && weather_int >= 8) {
                    return selectionService.shoesWeatherBetween8And18(sex, color,style, type);
                }
                if (weather_int <= 25 && weather_int >= 19) {
                    return selectionService.shoesWeatherBetween19And25(sex, color,style, type);
                }
                if (weather_int >= 26) {
                    return selectionService.shoesWeatherMore26(sex, color,style, type);
                }
            }
        }
        else {
            return  selectionService.basicSelection(sex, collection, color, style, type);
        }
        return null;
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

    public static String get_colour_name(ArrayList<Integer> a) {
        Map<String, ArrayList<Integer>> mincolors = new HashMap<>();
        for (String key : ColorService.outfitcolors.keySet()) {
            ArrayList<Integer> rgb = ColorService.outfitcolors.get(key);
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
        int red = (pixel >> 16) & 0xff;
        int green = (pixel >> 8) & 0xff;
        int blue = (pixel) & 0xff;

        return new int[]{red, green, blue};
    }
    private static boolean isGray(int[] rgbArr) {
        int rgDiff = rgbArr[0] - rgbArr[1];
        int rbDiff = rgbArr[0] - rgbArr[2];
        int tolerance = 10;
        if ((rgDiff > tolerance || rgDiff < -tolerance) && (rbDiff > tolerance || rbDiff < -tolerance)) {
            return false;
        }
        if (rgbArr[0] + rgbArr[1] + rgbArr[2] <= 90) {
            return false;
        }
        return true;
    }
}