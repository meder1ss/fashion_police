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
        model.addAttribute("hat", productService.Outfit(sex, collection, color, style, "Головной убор", weather));
        model.addAttribute("gloves", productService.Outfit(sex, collection, color, style, "Перчатки", weather));
        model.addAttribute("scarf", productService.Outfit(sex, collection, color, style, "Шарф", weather));
        model.addAttribute("outerwear", productService.Outfit(sex, collection, color, style, "Верхняя одежда", weather));
        Product top = productService.Outfit(sex, collection, color, style, "Верх", weather);
        model.addAttribute("top", top);
        if (top != null) {
            if ((top.getTitle().toLowerCase()).contains("Платье".toLowerCase()) || (top.getTitle().toLowerCase()).contains("Сарафан".toLowerCase()) || (top.getTitle().toLowerCase()).contains("Туника".toLowerCase())) {
                model.addAttribute("pants", null);
            } else {
                model.addAttribute("pants", productService.Outfit(sex, collection, color, style, "Низ", weather));
            }
        }
        model.addAttribute("shoes", productService.Outfit(sex, collection, color, style, "Обувь", weather));
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
        if (russianColor.equals("черный") || russianColor.equals("чёрный")) {
            englishColor = "black";
        }
        if (russianColor.equals("голубой")) {
            englishColor = "blue";
        }
        if (russianColor.equals("розовый")) {
            englishColor = "pink";
        }
        if (russianColor.equals("бежевый")) {
            englishColor = "beige";
        }
        if (russianColor.equals("коричневый")) {
            englishColor = "brown";
        }
        if ((russianColor.equals("зеленый")) || (russianColor.equals("салатовый")) || (russianColor.equals("зелёный"))) {
            englishColor = "green";
        }
        if ((russianColor.equals("лаймовый")) || (russianColor.equals("лайм"))) {
            englishColor = "lime";
        }
        if (russianColor.equals("синий")) {
            englishColor = "navy";
        }
        if (russianColor.equals("бирюзовый")) {
            englishColor = "teal";
        }
        if (russianColor.equals("желтый") || russianColor.equals("золотой") || russianColor.equals("жёлтый") || russianColor.equals("лимонный")) {
            englishColor = "yellow";
        }
        if (russianColor.equals("серый")) {
            englishColor = "grey";
        }
        if ((russianColor.equals("серебряный")) || (russianColor.equals("серебристый")))  {
            englishColor = "silver";
        }
        if (russianColor.equals("красный")) {
            englishColor = "red";
        }
        if (russianColor.equals("бордовый") || russianColor.equals("бордо")) {
            englishColor = "maroon";
        }
        if (russianColor.equals("оранжевый")) {
            englishColor = "orange";
        }
        if (russianColor.equals("белый")) {
            englishColor = "white";
        }
        if (russianColor.equals("фиолетовый") || russianColor.equals("пурпур") || russianColor.equals("пурпурный") || russianColor.equals("сиреневый")) {
            englishColor = "purple";
        }
        if (russianColor.equals("белый")) {
            englishColor = "white";
        }
        if (russianColor.equals("оливковый") || russianColor.equals("охра")){
            englishColor = "olive";
        }
        if (russianColor.equals("фуксия")){
            englishColor = "fuchsia";
        }
        if (russianColor.equals("аквамарин")) {
            englishColor = "aqua";
        }
        return englishColor;
    }
}
