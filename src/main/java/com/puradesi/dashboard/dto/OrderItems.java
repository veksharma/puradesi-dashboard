package com.puradesi.dashboard.dto;

import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class OrderItems {

    private String address;
    private String cancelledDate;
    private String orderedDate;
    private String packedDate;
    private String shippedDate;
    private String cuttedPrice;
    private String fullName;
    private String orderID;
    private String paymentMethod;
    private String pincode;
    private String productID;
    private String productImage;
    private String productPrice;
    private Long productQuantity;
    private String productTitle;
    private String userID;
}
