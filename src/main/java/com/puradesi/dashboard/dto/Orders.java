package com.puradesi.dashboard.dto;

import lombok.*;

import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Orders {

    private String deliveryPrice;
    private String orderStatus;
    private String paymentStatus;
    private Long savedAmount;
    private Long totalAmount;
    private Long totalItems;
    private Long totalItemsPrice;

    private List<OrderItems> orderItems;
}
