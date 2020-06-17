package com.puradesi.dashboard.controllers;

import com.puradesi.dashboard.integration.WmsRestClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

@Controller
public class MainController {

	@Autowired
    WmsRestClient wmsRestClient;
	@Autowired
	RestTemplate restTemplate;

	@RequestMapping({ "/home", "/" })
	public String showHomePage(ModelMap modelMap) {
		String totalUsers = wmsRestClient.totalUsers();
		String totalCustomers = wmsRestClient.totalCustomers();
		String todayPayment = wmsRestClient.todayPayment();
		String totalPayment = wmsRestClient.totalPayment();
		modelMap.addAttribute("totalUsers", totalUsers);
		modelMap.addAttribute("totalCustomers", totalCustomers);
		modelMap.addAttribute("todayPayment", todayPayment);
		modelMap.addAttribute("totalPayment", totalPayment);
		return "showHomePage";

	}

}
