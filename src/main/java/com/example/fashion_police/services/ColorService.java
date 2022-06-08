package com.example.fashion_police.services;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class ColorService {
    private ColorService(){ }

    static final String WHITE = "white";
    static final String BLACK = "black";
    static final String ORANGE = "orange";
    static final String YELLOW = "yellow";
    static final String PURPLE = "purple";
    static final String GREEN = "green";
    static final String SILVER = "silver";
    static final String MARRON = "marron";
    static final String BEIGE = "beige";
    static final String FUCHSIA = "fuchsia";
    static final String OLIVE = "olive";
    static final String BROWN = "brown";

    static final public Map<String, ArrayList<Integer>> outfitcolors = new HashMap<>();
    static final public Map<String, ArrayList<String>> colorstab = new HashMap<>();

    public static void colorGames() {
        outfitcolors.put("aqua", new ArrayList<>(Arrays.asList(0,255,255)));
        outfitcolors.put(BLACK, new ArrayList<>(Arrays.asList(0,0,0)));
        outfitcolors.put("blue", new ArrayList<>(Arrays.asList(0,0,255)));
        outfitcolors.put(FUCHSIA, new ArrayList<>(Arrays.asList(255,0,255)));
        outfitcolors.put(GREEN, new ArrayList<>(Arrays.asList(0,128,0)));
        outfitcolors.put("grey", new ArrayList<>(Arrays.asList(128,128,128)));
        outfitcolors.put("lime", new ArrayList<>(Arrays.asList(0,255,0)));
        outfitcolors.put(MARRON, new ArrayList<>(Arrays.asList(128,0,0)));
        outfitcolors.put("navy", new ArrayList<>(Arrays.asList(0,0,128)));
        outfitcolors.put(OLIVE, new ArrayList<>(Arrays.asList(128,128,0)));
        outfitcolors.put(PURPLE, new ArrayList<>(Arrays.asList(128,0,128)));
        outfitcolors.put("red", new ArrayList<>(Arrays.asList(255,0,0)));
        outfitcolors.put(SILVER, new ArrayList<>(Arrays.asList(192,192,192)));
        outfitcolors.put("teal", new ArrayList<>(Arrays.asList(0,128,128)));
        outfitcolors.put(WHITE, new ArrayList<>(Arrays.asList(255,255,255)));
        outfitcolors.put(YELLOW, new ArrayList<>(Arrays.asList(255,255,0)));
        outfitcolors.put(ORANGE, new ArrayList<>(Arrays.asList(255,165,0)));
        outfitcolors.put("pink", new ArrayList<>(Arrays.asList(255,192,203)));
        outfitcolors.put(BEIGE, new ArrayList<>(Arrays.asList(209, 188, 138)));
        outfitcolors.put(BROWN, new ArrayList<>(Arrays.asList(153, 51, 0)));

        colorstab.put("aqua", new ArrayList<>(Arrays.asList("aqua", "blue", "red", MARRON, BEIGE, "pink", "navy", ORANGE, PURPLE, WHITE, SILVER, BLACK)));
        colorstab.put(BLACK, new ArrayList<>(Arrays.asList(BLACK, WHITE, "aqua", "blue", FUCHSIA, "pink", GREEN, "grey", BEIGE, "lime", MARRON, "navy", OLIVE, PURPLE, "red", SILVER, "teal", YELLOW, ORANGE)));
        colorstab.put("blue", new ArrayList<>(Arrays.asList("blue", "aqua", "red", MARRON, BEIGE, "navy", ORANGE, "pink", PURPLE, WHITE, SILVER, BLACK)));
        colorstab.put(FUCHSIA, new ArrayList<>(Arrays.asList(FUCHSIA, "lime", GREEN, "pink", PURPLE, "aqua", "blue", YELLOW, ORANGE, "navy", SILVER, WHITE, BLACK)));
        colorstab.put(GREEN, new ArrayList<>(Arrays.asList(GREEN, YELLOW, "lime", FUCHSIA, "pink", PURPLE, "navy", "red", ORANGE, MARRON, WHITE, BLACK)));
        colorstab.put("grey", new ArrayList<>(Arrays.asList("grey", BLACK, GREEN, "red", "navy", FUCHSIA, "pink", YELLOW,"blue","teal", WHITE, SILVER)));
        colorstab.put("lime", new ArrayList<>(Arrays.asList("lime", GREEN, FUCHSIA, PURPLE, "pink", YELLOW, SILVER, "grey", ORANGE,"navy", WHITE, BLACK)));
        colorstab.put(MARRON, new ArrayList<>(Arrays.asList(MARRON, "teal", "red", "grey", SILVER, YELLOW, ORANGE, WHITE, BLACK)));
        colorstab.put("navy", new ArrayList<>(Arrays.asList("navy", "red", "grey", OLIVE, MARRON, BEIGE, SILVER, WHITE, BLACK)));
        colorstab.put(OLIVE, new ArrayList<>(Arrays.asList(OLIVE, FUCHSIA , PURPLE, ORANGE, BEIGE, YELLOW, "lime", "teal", MARRON, WHITE, BLACK)));
        colorstab.put(PURPLE, new ArrayList<>(Arrays.asList(PURPLE, OLIVE, YELLOW, ORANGE, GREEN, "pink", "teal", SILVER, WHITE, BLACK)));
        colorstab.put("red", new ArrayList<>(Arrays.asList("red", GREEN, "blue", "navy", YELLOW, "grey", SILVER, "teal", PURPLE, WHITE, BLACK)));
        colorstab.put(SILVER, new ArrayList<>(Arrays.asList(SILVER, BLACK, GREEN, "red", "navy", "pink", FUCHSIA, YELLOW, "blue", "teal", WHITE, "grey")));
        colorstab.put("teal", new ArrayList<>(Arrays.asList("teal", "pink", FUCHSIA, BEIGE, PURPLE, "red", ORANGE, MARRON, WHITE, BLACK)));
        colorstab.put(WHITE, new ArrayList<>(Arrays.asList(WHITE, BLACK, "aqua", BEIGE, "blue", FUCHSIA, "pink", GREEN, "grey", "lime", MARRON, "navy", OLIVE, PURPLE, "red", SILVER, "teal", YELLOW, ORANGE)));
        colorstab.put(YELLOW, new ArrayList<>(Arrays.asList(YELLOW, GREEN, MARRON, PURPLE, FUCHSIA,"navy", ORANGE, WHITE, BLACK)));
        colorstab.put(ORANGE, new ArrayList<>(Arrays.asList(ORANGE, "blue", GREEN, PURPLE, MARRON, WHITE, "navy", "red", "teal", BLACK)));
        colorstab.put(BEIGE, new ArrayList<>(Arrays.asList(BEIGE, "teal", "blue", WHITE, BROWN, "navy", "pink", YELLOW, "aqua", ORANGE, BLACK)));
        colorstab.put("pink", new ArrayList<>(Arrays.asList("pink", "teal", "lime", "aqua", PURPLE, "blue", GREEN, WHITE, BLACK)));
        colorstab.put(BROWN, new ArrayList<>(Arrays.asList(BROWN, "teal", "blue", WHITE, BEIGE, "navy", "pink", YELLOW, "aqua", ORANGE, BLACK)));
    }
}
