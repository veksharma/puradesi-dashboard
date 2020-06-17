package com.puradesi.dashboard;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
//@EnableEurekaClient
public class PuraDesiDashboardApplication {

	@Bean
//	@LoadBalanced
	public RestTemplate getRestTemplate() {
		return new RestTemplate();
	}
		
	public static void main(String[] args) {
		SpringApplication.run(PuraDesiDashboardApplication.class, args);
	}

}
