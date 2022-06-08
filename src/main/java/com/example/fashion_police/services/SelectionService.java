package com.example.fashion_police.services;

import com.example.fashion_police.FashionPoliceApplication;
import com.example.fashion_police.models.Product;
import com.example.fashion_police.repositories.ProductRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;

@Service
@Slf4j
@RequiredArgsConstructor
public class SelectionService {
    private final ProductRepository productRepository;
    final String CASUAL = "Повседневный";
    final String UNISEX = "Унисекс";
    final String AUTUMN = "Осень";
    final String DEMI_SEASON = "Деми-сезон";

    public Product outerwearWeatherLess20(String sex, String color, String style, String type) {
        ArrayList<String> outfits = new ArrayList<>(Arrays.asList("Пуховик", "Шуба"));
        Product product = complementAnOutfitWithName(outfits, sex, "Зима", color, style, type);
        if (product != null) {
            return product;
        } else {
            product = complementAnOutfitWithName(outfits, sex, "Зима", color, CASUAL, type);
            if (product != null) {
                return product;
            } else {
                product = complementAnOutfitWithName(outfits, UNISEX, "Зима", color, CASUAL, type);
                if (product != null) {
                    return product;
                } else {
                    return null;
                }
            }
        }
    }

    public Product outerwearWeatherBetween19And10(String sex, String color, String style, String type) {
        ArrayList<String> outfits = new ArrayList<>(Arrays.asList("Пуховик", "Шуба", "Дубленка"));
        Product product = complementAnOutfitWithName(outfits, sex, "Зима", color, style, type);
        if (product != null) {
            return product;
        } else {
            product = complementAnOutfitWithName(outfits, sex, "Зима", color, CASUAL, type);
            if (product != null) {
                return product;
            } else {
                product = complementAnOutfitWithName(outfits, UNISEX, "Зима", color, CASUAL, type);
                if (product != null) {
                    return product;
                } else {
                    return null;
                }
            }
        }
    }

    public Product outerwearWeatherBetween9And0(String sex, String color, String style, String type) {
        ArrayList<String> outfits = new ArrayList<>(Arrays.asList("Куртка", "Пуховик", "Дубленка"));
        Product product = complementAnOutfitWithName(outfits, sex, "Зима", color, style, type);
        if (product != null) {
            return product;
        } else {
            product = complementAnOutfitWithName(outfits, sex, "Зима", color, CASUAL, type);
            if (product != null) {
                return product;
            } else {
                product = complementAnOutfitWithName(outfits, UNISEX, "Зима", color, CASUAL, type);
                if (product != null) {
                    return product;
                } else {
                    return null;
                }
            }
        }
    }

    public Product outerwearWeatherBetween1And7(String sex, String color, String style, String type) {
        ArrayList<String> outfits = new ArrayList<>(Arrays.asList("Куртка", "Дубленка", "Пальто"));
        Product product = complementAnOutfitWithName(outfits, sex, "Зима", color, style, type);
        if (product != null) {
            return product;
        } else {
            product = complementAnOutfitWithName(outfits, sex, "Зима", color, CASUAL, type);
            if (product != null) {
                return product;
            } else {
                product = complementAnOutfitWithName(outfits, UNISEX, "Зима", color, CASUAL, type);
                if (product != null) {
                    return product;
                } else {
                    product = complementAnOutfitWithName(outfits, UNISEX, AUTUMN, color, CASUAL, type);
                    if (product != null) {
                        return product;
                    } else {
                        return null;
                    }
                }
            }
        }
    }

    public Product outerwearWeatherBetween8And14(String sex, String color, String style, String type) {
        ArrayList<String> outfits = new ArrayList<>(Arrays.asList("Куртка", "Пальто", "Дубленка", "Плащ"));
        Product product = complementAnOutfitWithName(outfits, sex, AUTUMN, color, style, type);
        if (product != null) {
            return product;
        } else {
            product = complementAnOutfitWithName(outfits, sex, AUTUMN, color, CASUAL, type);
            if (product != null) {
                return product;
            } else {
                product = complementAnOutfitWithName(outfits, UNISEX, AUTUMN, color, CASUAL, type);
                if (product != null) {
                    return product;
                } else {
                    product = complementAnOutfit(UNISEX, AUTUMN, color, CASUAL, type);
                    if (product != null) {
                        return product;
                    } else {
                        return null;
                    }
                }
            }
        }
    }

    public Product outerwearWeatherBetween15And18(String sex, String color, String style, String type) {
        ArrayList<String> outfits = new ArrayList<>(Arrays.asList("Кожанка", "Кожаная куртка", "Джинсовка", "Джинсовая куртка", "Куртка", "Пальто", "Жакет", "Пиджак", "Блейзер"));
        Product product = complementAnOutfitWithName(outfits, sex, AUTUMN, color, style, type);
        if (product != null) {
            return product;
        } else {
            product = complementAnOutfitWithName(outfits, sex, DEMI_SEASON, color, CASUAL, type);
            if (product != null) {
                return product;
            } else {
                product = complementAnOutfitWithName(outfits, UNISEX, DEMI_SEASON, color, CASUAL, type);
                if (product != null) {
                    return product;
                } else {
                    product = complementAnOutfit(UNISEX, "Лето", color, CASUAL, type);
                    if (product != null) {
                        return product;
                    } else {
                        return null;
                    }
                }
            }
        }
    }

    public Product topWeatherLess10(String sex, String color, String style, String type) {
        ArrayList<String> outfits = new ArrayList<>(Arrays.asList("Свитер", "Водолазка"));
        Product product = complementAnOutfitWithName(outfits, sex, "Зима", color, style, type);
        if (product != null) {
            return product;
        } else {
            product = complementAnOutfitWithName(outfits, sex, "Зима", color, CASUAL, type);
            if (product != null) {
                return product;
            } else {
                product = complementAnOutfitWithName(outfits, UNISEX, "Зима", color, CASUAL, type);
                if (product != null) {
                    return product;
                } else {
                    product = complementAnOutfit(UNISEX, "Зима", color, CASUAL, type);
                    if (product != null) {
                        return product;
                    } else {
                        return null;
                    }
                }
            }
        }
    }

    public Product topWeatherBetween9And0(String sex, String color, String style, String type) {
        ArrayList<String> outfits = new ArrayList<>(Arrays.asList("Свитер", "Водолазка", "Джемпер", "Платье"));
        Product product = complementAnOutfitWithName(outfits, sex, "Зима", color, style, type);
        if (product != null) {
            return product;
        } else {
            product = complementAnOutfitWithName(outfits, sex, "Зима", color, CASUAL, type);
            if (product != null) {
                return product;
            } else {
                product = complementAnOutfitWithName(outfits, UNISEX, "Зима", color, CASUAL, type);
                if (product != null) {
                    return product;
                } else {
                    product = complementAnOutfit(UNISEX, "Зима", color, CASUAL, type);
                    if (product != null) {
                        return product;
                    } else {
                        return null;
                    }
                }
            }
        }
    }

    public Product topWeatherBetween1And7(String sex, String color, String style, String type) {
        ArrayList<String> outfits = new ArrayList<>(Arrays.asList("Свитер", "Водолазка", "Джемпер", "Платье", "Толстовка", "Рубашка", "Блузка", "Кофта"));
        Product product = complementAnOutfitWithName(outfits, sex, "Зима", color, style, type);
        if (product != null) {
            return product;
        } else {
            product = complementAnOutfitWithName(outfits, sex, "Зима", color, CASUAL, type);
            if (product != null) {
                return product;
            } else {
                product = complementAnOutfitWithName(outfits, UNISEX, AUTUMN, color, CASUAL, type);
                if (product != null) {
                    return product;
                } else {
                    product = complementAnOutfit(UNISEX, "Зима", color, CASUAL, type);
                    if (product != null) {
                        return product;
                    } else {
                        return null;
                    }
                }
            }
        }
    }

    public Product topWeatherBetween8And14(String sex, String color, String style, String type) {
        ArrayList<String> outfits = new ArrayList<>(Arrays.asList("Водолазка", "Джемпер", "Платье", "Толстовка", "Рубашка", "Блузка", "Кофта"));
        Product product = complementAnOutfitWithName(outfits, sex, AUTUMN, color, style, type);
        if (product != null) {
            return product;
        } else {
            product = complementAnOutfitWithName(outfits, sex, AUTUMN, color, CASUAL, type);
            if (product != null) {
                return product;
            } else {
                product = complementAnOutfitWithName(outfits, UNISEX, DEMI_SEASON, color, CASUAL, type);
                if (product != null) {
                    return product;
                } else {
                    product = complementAnOutfit(UNISEX, AUTUMN, color, CASUAL, type);
                    if (product != null) {
                        return product;
                    } else {
                        product = complementAnOutfit(UNISEX, DEMI_SEASON, color, CASUAL, type);
                        if (product != null) {
                            return product;
                        } else {
                            return null;
                        }
                    }
                }
            }
        }
    }

    public Product topWeatherBetween15And18(String sex, String color, String style, String type) {
        ArrayList<String> outfits = new ArrayList<>(Arrays.asList("толстовка", "топ", "футболка", "майка", "платье", "рубашка", "блузка", "сарафан"));
        Product product = complementAnOutfitWithName(outfits, sex, "Лето", color, style, type);
        if (product != null) {
            return product;
        } else {
            product = complementAnOutfitWithName(outfits, sex, "Лето", color, CASUAL, type);
            if (product != null) {
                return product;
            } else {
                product = complementAnOutfitWithName(outfits, UNISEX, DEMI_SEASON, color,  CASUAL, type);
                if (product != null) {
                    return product;
                } else {
                    product = complementAnOutfit(sex, "Лето", color,  CASUAL, type);
                    if (product != null) {
                        return product;
                    } else {
                        product = complementAnOutfit(UNISEX, "Лето", color, CASUAL, type);
                        if (product != null) {
                            return product;
                        } else {
                            return null;
                        }
                    }
                }
            }
        }
    }

    public Product topWeatherBetween19And25(String sex, String color, String style, String type) {
        ArrayList<String> outfits = new ArrayList<>(Arrays.asList("топ", "футболка", "майка", "платье", "рубашка", "блузка", "сарафан"));
        Product product = complementAnOutfitWithName(outfits, sex, "Лето", color, style, type);
        if (product != null) {
            return product;
        } else {
            product = complementAnOutfitWithName(outfits, sex, "Лето", color, CASUAL, type);
            if (product != null) {
                return product;
            } else {
                product = complementAnOutfitWithName(outfits, UNISEX, DEMI_SEASON, color, CASUAL, type);
                if (product != null) {
                    return product;
                } else {
                    product = complementAnOutfit(sex, "Лето", color, CASUAL, type);
                    if (product != null) {
                        return product;
                    } else {
                        product = complementAnOutfit(UNISEX, "Лето", color, CASUAL, type);
                        if (product != null) {
                            return product;
                        } else {
                            return null;
                        }
                    }
                }
            }
        }
    }

    public Product topWeatherMore26(String sex, String color, String style, String type) {
        ArrayList<String> outfits = new ArrayList<>(Arrays.asList("топ", "футболка", "майка", "платье", "сарафан"));
        Product product = complementAnOutfitWithName(outfits, sex, "Лето", color, style, type);
        if (product != null) {
            return product;
        } else {
            product = complementAnOutfitWithName(outfits, sex, "Лето", color, CASUAL, type);
            if (product != null) {
                return product;
            } else {
                product = complementAnOutfitWithName(outfits, UNISEX, DEMI_SEASON, color, CASUAL, type);
                if (product != null) {
                    return product;
                } else {
                    product = complementAnOutfit(sex, "Лето", color, CASUAL, type);
                    if (product != null) {
                        return product;
                    } else {
                        product = complementAnOutfit(UNISEX, "Лето", color, CASUAL, type);
                        if (product != null) {
                            return product;
                        } else {
                            return null;
                        }
                    }
                }
            }
        }
    }

    public Product pantsWeatherLess10(String sex, String color, String style, String type) {
        ArrayList<String> outfits = new ArrayList<>(Arrays.asList("Ватные", "Дутые", "Штаны"));
        Product product = complementAnOutfitWithName(outfits, sex, "Зима", color, style, type);
        if (product != null) {
            return product;
        } else {
            product = complementAnOutfitWithName(outfits, sex, "Зима", color, CASUAL, type);
            if (product != null) {
                return product;
            } else {
                product = complementAnOutfitWithName(outfits, UNISEX, "Зима", color, CASUAL, type);
                if (product != null) {
                    return product;
                } else {
                    product = complementAnOutfit(UNISEX, "Зима", color, CASUAL, type);
                    if (product != null) {
                        return product;
                    } else {
                        return null;
                    }
                }
            }
        }
    }

    public Product pantsWeatherBetween9And0(String sex, String color, String style, String type) {
        ArrayList<String> outfits = new ArrayList<>(Arrays.asList("Штаны", "Джинсы", "Юбка"));
        Product product = complementAnOutfitWithName(outfits, sex, "Зима", color, style, type);
        if (product != null) {
            return product;
        } else {
            product = complementAnOutfitWithName(outfits, sex, "Зима", color, CASUAL, type);
            if (product != null) {
                return product;
            } else {
                product = complementAnOutfitWithName(outfits, UNISEX, "Зима", color, CASUAL, type);
                if (product != null) {
                    return product;
                } else {
                    product = complementAnOutfit(UNISEX, "Зима", color, CASUAL, type);
                    if (product != null) {
                        return product;
                    } else {
                        return null;
                    }
                }
            }
        }
    }

    public Product pantsWeatherBetween1And7(String sex, String color, String style, String type) {
        ArrayList<String> outfits = new ArrayList<>(Arrays.asList("Штаны", "Джинсы", "Юбка", "Брюки"));
        Product product = complementAnOutfitWithName(outfits, sex, "Зима", color, style, type);
        if (product != null) {
            return product;
        } else {
            product = complementAnOutfitWithName(outfits, sex, AUTUMN, color, style, type);
            if (product != null) {
                return product;
            } else {
                product = complementAnOutfitWithName(outfits, sex, "Зима", color, CASUAL, type);
                if (product != null) {
                    return product;
                } else {
                    product = complementAnOutfitWithName(outfits, UNISEX, "Зима", color, CASUAL, type);
                    if (product != null) {
                        return product;
                    } else {
                        product = complementAnOutfit(UNISEX, "Зима", color, CASUAL, type);
                        if (product != null) {
                            return product;
                        } else {
                            return null;
                        }
                    }
                }
            }
        }
    }

    public Product pantsWeatherBetween8And14(String sex, String color, String style, String type) {
        ArrayList<String> outfits = new ArrayList<>(Arrays.asList("Штаны", "Джинсы", "Юбка", "Брюки"));
        Product product = complementAnOutfitWithName(outfits, sex, AUTUMN, color, style, type);
        if (product != null) {
            return product;
        } else {
            product = complementAnOutfitWithName(outfits, sex, AUTUMN, color, CASUAL, type);
            if (product != null) {
                return product;
            } else {
                product = complementAnOutfitWithName(outfits, UNISEX, AUTUMN, color, CASUAL, type);
                if (product != null) {
                    return product;
                } else {
                    product = complementAnOutfit(UNISEX, AUTUMN, color, CASUAL, type);
                    if (product != null) {
                        return product;
                    } else {
                        return null;
                    }
                }
            }
        }
    }

    public Product pantsWeatherBetween15And18(String sex, String color, String style, String type) {
        ArrayList<String> outfits = new ArrayList<>(Arrays.asList("Штаны", "Джинсы", "Юбка", "Брюки"));
        Product product = complementAnOutfitWithName(outfits, sex, AUTUMN, color, style, type);
        if (product != null) {
            return product;
        } else {
            product = complementAnOutfitWithName(outfits, sex, "Лето", color, style, type);
            if (product != null) {
                return product;
            } else {
                product = complementAnOutfitWithName(outfits, sex, AUTUMN, color, CASUAL, type);
                if (product != null) {
                    return product;
                } else {
                    product = complementAnOutfitWithName(outfits, UNISEX, AUTUMN, color, CASUAL, type);
                    if (product != null) {
                        return product;
                    } else {
                        product = complementAnOutfit(UNISEX, AUTUMN, color, CASUAL, type);
                        if (product != null) {
                            return product;
                        } else {
                            return null;
                        }
                    }
                }
            }
        }
    }

    public Product pantsWeatherBetween19And25(String sex, String color, String style, String type) {
        ArrayList<String> outfits = new ArrayList<>(Arrays.asList("Штаны", "Джинсы", "Юбка", "Брюки", "Шорты"));
        Product product = complementAnOutfitWithName(outfits, sex, "Лето", color, style, type);
        if (product != null) {
            return product;
        } else {
            product = complementAnOutfitWithName(outfits, sex, "Лето", color, CASUAL, type);
            if (product != null) {
                return product;
            } else {
                product = complementAnOutfitWithName(outfits, UNISEX, "Лето", color, CASUAL, type);
                if (product != null) {
                    return product;
                } else {
                    product = complementAnOutfit(UNISEX, "Лето", color, CASUAL, type);
                    if (product != null) {
                        return product;
                    } else {
                        return null;
                    }
                }
            }
        }
    }

    public Product pantsWeatherMore26(String sex, String color, String style, String type) {
        ArrayList<String> outfits = new ArrayList<>(Arrays.asList("Штаны", "Юбка", "Брюки", "Шорты"));
        Product product = complementAnOutfitWithName(outfits, sex, "Лето", color, style, type);
        if (product != null) {
            return product;
        } else {
            product = complementAnOutfitWithName(outfits, sex, "Лето", color, CASUAL, type);
            if (product != null) {
                return product;
            } else {
                product = complementAnOutfitWithName(outfits, UNISEX, "Лето", color, CASUAL, type);
                if (product != null) {
                    return product;
                } else {
                    product = complementAnOutfit(UNISEX, "Лето", color, CASUAL, type);
                    if (product != null) {
                        return product;
                    } else {
                        return null;
                    }
                }
            }
        }
    }

    public Product shoesWeatherLess20(String sex, String color, String style, String type) {
        ArrayList<String> outfits = new ArrayList<>(Arrays.asList("Ботинки"));
        Product product = complementAnOutfitWithName(outfits, sex, "Зима", color, style, type);
        if (product != null) {
            return product;
        } else {
            product = complementAnOutfitWithName(outfits, sex, "Зима", color, CASUAL, type);
            if (product != null) {
                return product;
            } else {
                product = complementAnOutfitWithName(outfits, UNISEX, "Зима", color, CASUAL, type);
                if (product != null) {
                    return product;
                } else {
                    product = complementAnOutfit(UNISEX, "Зима", color, CASUAL, type);
                    if (product != null) {
                        return product;
                    } else {
                        return null;
                    }
                }
            }
        }
    }

    public Product shoesWeatherBetween19And0(String sex, String color, String style, String type) {
        ArrayList<String> outfits = new ArrayList<>(Arrays.asList("Ботинки", "Сапоги"));
        Product product = complementAnOutfitWithName(outfits, sex, "Зима", color, style, type);
        if (product != null) {
            return product;
        } else {
            product = complementAnOutfitWithName(outfits, sex, "Зима", color, CASUAL, type);
            if (product != null) {
                return product;
            } else {
                product = complementAnOutfitWithName(outfits, UNISEX, "Зима", color, CASUAL, type);
                if (product != null) {
                    return product;
                } else {
                    product = complementAnOutfit(UNISEX, "Зима", color, CASUAL, type);
                    if (product != null) {
                        return product;
                    } else {
                        return null;
                    }
                }
            }
        }
    }

    public Product shoesWeatherBetween1And7(String sex, String color, String style, String type) {
        Product product = complementAnOutfit(sex, "Зима", color, style, type);
        if (product != null) {
            return product;
        } else {
            product = complementAnOutfit(sex, "Зима", color, CASUAL, type);
            if (product != null) {
                return product;
            } else {
                product = complementAnOutfit(UNISEX, "Зима", color, CASUAL, type);
                if (product != null) {
                    return product;
                } else {
                    product = complementAnOutfit(UNISEX, AUTUMN, color, CASUAL, type);
                    if (product != null) {
                        return product;
                    } else {
                        return null;
                    }
                }
            }
        }
    }

    public Product shoesWeatherBetween8And18(String sex, String color, String style, String type) {
        Product product = complementAnOutfit(sex, AUTUMN, color, style, type);
        if (product != null) {
            return product;
        } else {
            product = complementAnOutfit(sex, AUTUMN, color, CASUAL, type);
            if (product != null) {
                return product;
            } else {
                product = complementAnOutfit(UNISEX, AUTUMN, color, CASUAL, type);
                if (product != null) {
                    return product;
                } else {
                    product = complementAnOutfit(UNISEX, "Лето", color, CASUAL, type);
                    if (product != null) {
                        return product;
                    } else {
                        return null;
                    }
                }
            }
        }
    }

    public Product shoesWeatherBetween19And25(String sex, String color, String style, String type) {
        Product product = complementAnOutfit(sex, "Лето", color, style, type);
        if (product != null) {
            return product;
        } else {
            product = complementAnOutfit(sex, "Лето", color, CASUAL, type);
            if (product != null) {
                return product;
            } else {
                product = complementAnOutfit(UNISEX, "Лето", color, CASUAL, type);
                if (product != null) {
                    return product;
                } else {
                    return null;
                }
            }
        }
    }

    public Product shoesWeatherMore26(String sex, String color, String style, String type) {
        ArrayList<String> outfits = new ArrayList<>(Arrays.asList("Босоножки", "Сандалии"));
        Product product = complementAnOutfitWithName(outfits, sex, "Лето", color, style, type);
        if (product != null) {
            return product;
        } else {
            product = complementAnOutfitWithName(outfits, sex, "Лето", color, CASUAL, type);
            if (product != null) {
                return product;
            } else {
                product = complementAnOutfitWithName(outfits, UNISEX, "Лето", color, CASUAL, type);
                if (product != null) {
                    return product;
                } else {
                    product = complementAnOutfit(UNISEX, "Лето", color, CASUAL, type);
                    if (product != null) {
                        return product;
                    } else {
                        return null;
                    }
                }
            }
        }
    }

    public Product scarfOrHatOrGlovesWeatherLess0(String sex, String color, String style, String type) {
        Product product = complementAnOutfit(sex, "Зима", color, style, type);
        if (product != null) {
            return product;
        } else {
            product = complementAnOutfit(sex, "Зима", color, CASUAL, type);
            if (product != null) {
                return product;
            } else {
                product = complementAnOutfit(UNISEX, "Зима", color, CASUAL, type);
                if (product != null) {
                    return product;
                } else {
                    return null;
                }
            }
        }
    }

    public Product scarfOrHatOrGlovesWeatherBetween1And14Or7(String sex, String color, String style, String type) {
        Product product = complementAnOutfit(sex, AUTUMN, color, style, type);
        if (product != null) {
            return product;
        } else {
            product = complementAnOutfit(sex, AUTUMN, color, CASUAL, type);
            if (product != null) {
                return product;
            } else {
                product = complementAnOutfit(UNISEX, DEMI_SEASON, color, CASUAL, type);
                if (product != null) {
                    return product;
                } else {
                    return null;
                }
            }
        }
    }

    public Product basicSelection(String sex, String collection, String color, String style, String type) {
        Product product = complementAnOutfit(sex, collection, color, style, type);
        if (product != null) {
            return product;
        }
        else {
            product = complementAnOutfit(sex, collection, color,CASUAL, type);
            if (product != null) {
                return product;
            }
            else {
                product = complementAnOutfit(UNISEX, DEMI_SEASON, color, CASUAL, type);
                if (product != null) {
                    return product;
                }
                else {
                    return null;
                }
            }
        }
    }

    public Product complementAnOutfit(String sex, String collection, String color, String style, String type){
        ArrayList<String> complementColors = ColorService.colorstab.get(color);
        for (String newColor : complementColors) {
            Product complementedOutfit = productRepository.findFirstBySexAndCollectionAndTypeAndStyleAndColor(sex, collection, type, style, newColor);
            if (complementedOutfit != null) {
                return complementedOutfit;
            }
        }
        return null;
    }

    public Product complementAnOutfitWithName(ArrayList<String> names, String sex, String collection, String color, String style, String type){
        ArrayList<String> complementColors = ColorService.colorstab.get(color);
        for (String newColor : complementColors) {
            Product complementedOutfit = productRepository.findFirstBySexAndCollectionAndTypeAndStyleAndColor(sex, collection, type, style, newColor);
            if (complementedOutfit != null) {
                for (String name: names) {
                    if ((complementedOutfit.getTitle().toLowerCase()).contains(name.toLowerCase())) {
                        return complementedOutfit;
                    }
                }
            }
        }
        return null;
    }
}
