package com.puradesi.dashboard.dto;

import lombok.*;

import java.util.ArrayList;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Products {

    private String category;
    private String cutted_price;
    private long no_of_product_images;
    private String product_description;
    private String product_image_1;
    private String product_image_2;
    private String product_image_3;
    private String product_price;
    private String product_title;
    private ArrayList<String> tags;

}
