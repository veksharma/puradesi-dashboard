package com.puradesi.dashboard.controllers;

import com.puradesi.dashboard.integration.WmsRestClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ChartsController {
	
	@Autowired
    WmsRestClient wmsRestClient;
	
	@GetMapping("/lastPayments")
	public String lastPayments() {
		String lastPayment = wmsRestClient.lastPayment();
		return lastPayment;
	}
	

}
