package com.puradesi.dashboard.integration;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import com.google.gson.Gson;
import com.puradesi.dashboard.dto.Result;

@Component
public class WmsRestClientImpl implements WmsRestClient {

	private static final String API_URL = "http://localhost:8080/puradesirest/";


	@Autowired
	private RestTemplate restTemplate;

	RestTemplate restTemplate2 = new RestTemplate();


	@Override
	public String showCustomersJSON() {
		String customers = restTemplate.getForObject(API_URL + "customer", String.class);
		return customers;

	}

	@Override
	public String showUsersJSON() {
		String users = restTemplate.getForObject(API_URL + "users", String.class);
		return users;
	}

	@Override
	public String showAllPaymentsJSON() {
		String payments = restTemplate.getForObject(API_URL + "payments", String.class);
		return payments;
	}

	@Override
	public String getPaymentsByMonthJSON(String month) {
		String payments = restTemplate.getForObject(API_URL + "paymentsByMonth/" + month, String.class);
		System.out.println("vivek" + payments);
		return payments;
	}

	@Override
	public String getPaymentsByCodeJSON(String code) {
		return null;
	}


	@Override
	public String showPaymentsJSON(String username, String date) {
		String payments = restTemplate.getForObject(API_URL + "paymentreceiveby/" + username + "/" + date + "/",
				String.class);
		return payments;
	}

	@Override
	public String showPaymentsBetweenJSON(String userName, String fromDate, String toDate) {
		String paymentBetween = restTemplate
				.getForObject(API_URL + "paymentBetween/" + userName + "/" + fromDate + "/" + toDate, String.class);
		return paymentBetween;
	}


	@Override
	public String totalUsers() {
		String totalUsers = restTemplate.getForObject(API_URL + "orders/countPendingOrders", String.class);
		return totalUsers;
	}

	@Override
	public String totalCustomers() {
		String totalCustomers = restTemplate.getForObject(API_URL + "orders/countShippedOrders", String.class);
		return totalCustomers;
	}

	@Override
	public String todayPayment() {
		String todayPayment = restTemplate.getForObject(API_URL + "orders/countDeliveredOrders", String.class);
		return todayPayment;
	}

	@Override
	public String totalPayment() {
		String totalPayment = restTemplate.getForObject(API_URL + "orders/countCancelledOrders", String.class);
		return totalPayment;
	}

	@Override
	public String lastPayment() {
		String lastPayments = restTemplate.getForObject(API_URL + "orders/countLastOrders", String.class);
		return lastPayments;
	}



	@Override
	public Long deletePayment(Long id) {
		try {
			restTemplate.delete(API_URL + "deletePayment/" + id);
			return id;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return null;
	}

	@Override
	public String showPaymentPendingCustomersJSON(String month) {
		String customers = restTemplate.getForObject(API_URL + "customer/paymentPendingCustomers/" + month,
				String.class);
		return customers;
	}

}
