package com.example.fashion_police;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

@SpringBootApplication
public class FashionPoliceApplication {

    static final public Map<String, ArrayList<Integer>> outfitcolors = new HashMap<>();
    static final public Map<String, ArrayList<String>> colorstab = new HashMap<>();
    public static void main(String[] args) {
        outfitcolors.put("aqua", new ArrayList<>(Arrays.asList(0,255,255)));
        outfitcolors.put("black", new ArrayList<>(Arrays.asList(0,0,0)));
        outfitcolors.put("blue", new ArrayList<>(Arrays.asList(0,0,255)));
        outfitcolors.put("fuchsia", new ArrayList<>(Arrays.asList(255,0,255)));
        outfitcolors.put("green", new ArrayList<>(Arrays.asList(0,128,0)));
        outfitcolors.put("grey", new ArrayList<>(Arrays.asList(128,128,128)));
        outfitcolors.put("lime", new ArrayList<>(Arrays.asList(0,255,0)));
        outfitcolors.put("maroon", new ArrayList<>(Arrays.asList(128,0,0)));
        outfitcolors.put("navy", new ArrayList<>(Arrays.asList(0,0,128)));
        outfitcolors.put("olive", new ArrayList<>(Arrays.asList(128,128,0)));
        outfitcolors.put("purple", new ArrayList<>(Arrays.asList(128,0,128)));
        outfitcolors.put("red", new ArrayList<>(Arrays.asList(255,0,0)));
        outfitcolors.put("silver", new ArrayList<>(Arrays.asList(192,192,192)));
        outfitcolors.put("teal", new ArrayList<>(Arrays.asList(0,128,128)));
        outfitcolors.put("white", new ArrayList<>(Arrays.asList(255,255,255)));
        outfitcolors.put("yellow", new ArrayList<>(Arrays.asList(255,255,0)));
        outfitcolors.put("orange", new ArrayList<>(Arrays.asList(255,165,0)));
        outfitcolors.put("pink", new ArrayList<>(Arrays.asList(255,192,203)));
        outfitcolors.put("beige", new ArrayList<>(Arrays.asList(209, 188, 138)));
        outfitcolors.put("brown", new ArrayList<>(Arrays.asList(153, 51, 0)));
        colorstab.put("aqua", new ArrayList<>(Arrays.asList("aqua","blue","red","maroon","beige","pink","navy","orange","purple","white","silver","black")));
        colorstab.put("black", new ArrayList<>(Arrays.asList("black","white","aqua","blue","fuchsia", "pink","green","grey","beige","lime","maroon","navy", "olive", "purple", "red", "silver", "teal", "white", "yellow", "orange")));
        colorstab.put("blue", new ArrayList<>(Arrays.asList("blue","aqua","red","maroon","beige","navy","orange","pink","purple","white", "silver","black")));
        colorstab.put("fuchsia", new ArrayList<>(Arrays.asList("fuchsia","lime","green","pink", "purple","aqua","blue","yellow","orange","navy","silver","white","black")));
        colorstab.put("green", new ArrayList<>(Arrays.asList("green","yellow","lime","fuchsia", "pink","purple","navy","red","orange","maroon","white","black")));
        colorstab.put("grey", new ArrayList<>(Arrays.asList("grey","black","green","red","navy","fuchsia", "pink","yellow","blue","teal","white","silver")));
        colorstab.put("lime", new ArrayList<>(Arrays.asList("lime","green","fuchsia","purple", "pink","yellow","silver","grey","orange","navy","white","black")));
        colorstab.put("maroon", new ArrayList<>(Arrays.asList("maroon","teal","red","grey","silver","yellow","orange","white","black")));
        colorstab.put("navy", new ArrayList<>(Arrays.asList("navy","red","grey","olive","maroon", "beige","silver","white","black")));
        colorstab.put("olive", new ArrayList<>(Arrays.asList("olive","fuchsia","purple","orange","beige","yellow","lime","teal","maroon","white","black")));
        colorstab.put("purple", new ArrayList<>(Arrays.asList("purple", "olive", "yellow","orange", "green", "pink", "teal", "silver", "white", "black")));
        colorstab.put("red", new ArrayList<>(Arrays.asList("red","green","blue","navy","yellow","grey","silver","teal","purple","white","black")));
        colorstab.put("silver", new ArrayList<>(Arrays.asList("silver","black","green","red","navy","pink", "fuchsia","yellow","blue","teal","white","grey")));
        colorstab.put("teal", new ArrayList<>(Arrays.asList("teal","pink","fuchsia","beige","purple","red","orange","maroon","white","black")));
        colorstab.put("white", new ArrayList<>(Arrays.asList("white","black","aqua","beige","blue","fuchsia", "pink","green","grey","lime","maroon","navy", "olive", "purple", "red", "silver", "teal", "white", "yellow", "orange")));
        colorstab.put("yellow", new ArrayList<>(Arrays.asList("yellow","green","maroon","purple","fuchsia","navy","orange","white","black")));
        colorstab.put("orange", new ArrayList<>(Arrays.asList("orange","blue","green","purple","maroon","white","navy","red","teal","black")));
        colorstab.put("beige", new ArrayList<>(Arrays.asList("beige", "teal", "blue", "white", "brown", "navy", "pink", "yellow", "aqua", "orange", "black")));
        colorstab.put("pink", new ArrayList<>(Arrays.asList("pink", "teal", "lime", "aqua", "purple", "blue", "green", "white", "black")));
        colorstab.put("brown", new ArrayList<>(Arrays.asList("brown", "teal", "blue", "white", "beige", "navy", "pink", "yellow", "aqua", "orange", "black")));
        SpringApplication.run(FashionPoliceApplication.class, args);
    }
}
