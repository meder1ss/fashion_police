package com.example.fashion_police.controllers;

import com.example.fashion_police.models.Product;
import com.example.fashion_police.models.User;
import com.example.fashion_police.services.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class ProductController {
    private final ProductService productService;

    @GetMapping("/")
    public String mainPage(Model model, Principal principal) {
        model.addAttribute("user", productService.getUserByPrincipal(principal));
        return "products";
    }

    @GetMapping("/poli")
    public String poli(Model model, Principal principal) {
        model.addAttribute("user", productService.getUserByPrincipal(principal));
        return "poli";
    }

    @GetMapping("/clothing")
    public String products(@RequestParam(name = "title", required = false) String title, Principal principal, Model model) {
        model.addAttribute("products", productService.listProducts(title));
        model.addAttribute("user", productService.getUserByPrincipal(principal));
        return "clothing";
    }

    @GetMapping("/selection")
    public String selectOutfit(Principal principal, Model model) {
        model.addAttribute("user", productService.getUserByPrincipal(principal));
        return "selection";
    }

    @GetMapping("/about")
    public String getToMain(Principal principal, Model model) {
        model.addAttribute("user", productService.getUserByPrincipal(principal));
        return "about";
    }


    @GetMapping("/selection/create")
    public String createNewLook(@RequestParam(name = "sex", required = false) String sex,
                                @RequestParam(name = "color", required = false) String color,
                                @RequestParam(name = "collection", required = false) String collection,
                                @RequestParam(name = "style", required = false) String style,
                                @RequestParam(name = "weather", required = false) String weather,
                                Principal principal,
                                Model model) {
        color = translation(color);
        model.addAttribute("user", productService.getUserByPrincipal(principal));
        model.addAttribute("hat", productService.Outfit(sex, collection, color, style, "???????????????? ????????", weather));
        model.addAttribute("gloves", productService.Outfit(sex, collection, color, style, "????????????????", weather));
        model.addAttribute("scarf", productService.Outfit(sex, collection, color, style, "????????", weather));
        model.addAttribute("outerwear", productService.Outfit(sex, collection, color, style, "?????????????? ????????????", weather));
        Product top = productService.Outfit(sex, collection, color, style, "????????", weather);
        model.addAttribute("top", top);
        if (top != null) {
            if ((top.getTitle().toLowerCase()).contains("????????????".toLowerCase()) || (top.getTitle().toLowerCase()).contains("??????????????".toLowerCase()) || (top.getTitle().toLowerCase()).contains("????????????".toLowerCase())) {
                model.addAttribute("pants", null);
            } else {
                model.addAttribute("pants", productService.Outfit(sex, collection, color, style, "??????", weather));
            }
        }
        model.addAttribute("shoes", productService.Outfit(sex, collection, color, style, "??????????", weather));
        return "selection";
    }
    @GetMapping("/product/{id}")
    public String productInfo(@PathVariable Long id, Principal principal, Model model) {
        Product product = productService.getProductById(id);
        model.addAttribute("product", product);
        model.addAttribute("user", productService.getUserByPrincipal(principal));
        model.addAttribute("image", product.getImage());
        return "product-info";
    }

    @PostMapping("/product/create")
    public String createProduct(@RequestParam("file") MultipartFile file, Product product, Principal principal, Model model) throws IOException {
        productService.saveProduct(principal, product, file);
        User user = productService.getUserByPrincipal(principal);
        model.addAttribute("user",user);
        model.addAttribute("products", user.getProduct());
        return "user-private";
    }

    @PostMapping("/product/delete/{id}")
    public String deleteProduct(@PathVariable Long id, Principal principal, Model model) {
        productService.deleteProduct(id);
        User user = productService.getUserByPrincipal(principal);
        model.addAttribute("user", user);
        model.addAttribute("products", user.getProduct());
        return "user-private";
    }


    String translation(String russianColor){
        String englishColor = "white";
        russianColor = russianColor.toLowerCase();
        if (russianColor.equals("????????????") || russianColor.equals("????????????")) {
            englishColor = "black";
        }
        if (russianColor.equals("??????????????")) {
            englishColor = "blue";
        }
        if (russianColor.equals("??????????????")) {
            englishColor = "pink";
        }
        if (russianColor.equals("??????????????")) {
            englishColor = "beige";
        }
        if (russianColor.equals("????????????????????")) {
            englishColor = "brown";
        }
        if ((russianColor.equals("??????????????")) || (russianColor.equals("??????????????????")) || (russianColor.equals("??????????????"))) {
            englishColor = "green";
        }
        if ((russianColor.equals("????????????????")) || (russianColor.equals("????????"))) {
            englishColor = "lime";
        }
        if (russianColor.equals("??????????")) {
            englishColor = "navy";
        }
        if (russianColor.equals("??????????????????")) {
            englishColor = "teal";
        }
        if (russianColor.equals("????????????") || russianColor.equals("??????????????") || russianColor.equals("????????????") || russianColor.equals("????????????????")) {
            englishColor = "yellow";
        }
        if (russianColor.equals("??????????")) {
            englishColor = "grey";
        }
        if ((russianColor.equals("????????????????????")) || (russianColor.equals("??????????????????????")))  {
            englishColor = "silver";
        }
        if (russianColor.equals("??????????????")) {
            englishColor = "red";
        }
        if (russianColor.equals("????????????????") || russianColor.equals("??????????")) {
            englishColor = "maroon";
        }
        if (russianColor.equals("??????????????????")) {
            englishColor = "orange";
        }
        if (russianColor.equals("??????????")) {
            englishColor = "white";
        }
        if (russianColor.equals("????????????????????") || russianColor.equals("????????????") || russianColor.equals("??????????????????") || russianColor.equals("??????????????????")) {
            englishColor = "purple";
        }
        if (russianColor.equals("??????????")) {
            englishColor = "white";
        }
        if (russianColor.equals("??????????????????") || russianColor.equals("????????")){
            englishColor = "olive";
        }
        if (russianColor.equals("????????????")){
            englishColor = "fuchsia";
        }
        if (russianColor.equals("??????????????????")) {
            englishColor = "aqua";
        }
        return englishColor;
    }
}
