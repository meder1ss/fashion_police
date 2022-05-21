package com.example.fashion_police.models;

import com.example.fashion_police.FashionPoliceApplication;
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
    @Column(name = "author")
    private String author;
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
        String color1 = getHexColor(newBi);

        ArrayList<Integer> rgbArr = hexToRGB(color1);
        color = get_colour_name(rgbArr);
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