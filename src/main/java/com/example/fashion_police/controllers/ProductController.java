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
                                @RequestParam(name = "collection", required = false) String collection,
                                @RequestParam(name = "color", required = false) String color,
                                @RequestParam(name = "style", required = false) String style,
                                Model model) {
        color = translation(color);
        model.addAttribute("top", productService.Outfit(sex, collection, color, style, "Верх"));
        model.addAttribute("pants", productService.Outfit(sex, collection, color, style, "Низ"));
        model.addAttribute("shoes", productService.Outfit(sex, collection, color, style, "Обувь"));
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
        if ((russianColor == "черный") || (russianColor == "чёрный")) {
            englishColor = "black";
        }
        if (russianColor == "голубой") {
            englishColor = "blue";
        }
        if (russianColor == "розовый") {
            englishColor = "pink";
        }
        if (russianColor == "бежевый") {
            englishColor = "beige";
        }
        if (russianColor == "коричневый") {
            englishColor = "brown";
        }
        if ((russianColor == "зеленый") || (russianColor == "салатовый") || (russianColor == "зелёный")) {
            englishColor = "green";
        }
        if ((russianColor == "лаймовый") || (russianColor == "лайм")) {
            englishColor = "lime";
        }
        if (russianColor == "синий") {
            englishColor = "navy";
        }
        if (russianColor == "бирюзовый") {
            englishColor = "teal";
        }
        if ((russianColor == "желтый") || (russianColor == "золотой") || (russianColor == "жёлтый") || (russianColor == "лимонный")) {
            englishColor = "yellow";
        }
        if (russianColor == "серый") {
            englishColor = "grey";
        }
        if ((russianColor == "серебряный") || (russianColor == "серебристый"))  {
            englishColor = "silver";
        }
        if (russianColor == "красный") {
            englishColor = "red";
        }
        if ((russianColor == "бордовый") || (russianColor == "бордо")) {
            englishColor = "maroon";
        }
        if (russianColor == "оранжевый") {
            englishColor = "orange";
        }
        if (russianColor == "белый") {
            englishColor = "white";
        }
        if ((russianColor == "фиолетовый") || (russianColor == "пурпур") || (russianColor == "пурпурный") || (russianColor == "сиреневый")) {
            englishColor = "purple";
        }
        if (russianColor == "белый") {
            englishColor = "white";
        }
        if ((russianColor == "оливковый") || (russianColor == "охра")){
            englishColor = "olive";
        }
        if (russianColor == "фуксия"){
            englishColor = "fuchsia";
        }
        if (russianColor == "аквамарин") {
            englishColor = "aqua";
        }
        return englishColor;
    }
}
