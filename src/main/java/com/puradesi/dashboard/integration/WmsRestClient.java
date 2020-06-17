package com.puradesi.dashboard.integration;

import com.puradesi.dashboard.dto.Result;

public interface WmsRestClient {
	
	public String showCustomersJSON();
	
	public String showUsersJSON();
	
	public String showPaymentsJSON(String username, String date);

	public String showAllPaymentsJSON();

	public String totalPayment();

	public String totalUsers();

	public String totalCustomers();

	public String todayPayment();

	public String lastPayment();

	public Long deletePayment(Long id);

	public String showPaymentsBetweenJSON(String userName, String fromDate, String toDate);

	public String showPaymentPendingCustomersJSON(String month);

	public String getPaymentsByMonthJSON(String month);

	public String getPaymentsByCodeJSON(String code);





	
	

}
