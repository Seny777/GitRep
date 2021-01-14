package com.icss;

import org.springframework.boot.SpringApplication;
import org.springframework.cloud.client.SpringCloudApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

/*@EnableCircuitBreaker熔断
@EnableDiscoveryClient
@SpringBootApplication*/
@SpringCloudApplication
@EnableFeignClients
public class CustApp {
	public static void main(String[] args) {
		SpringApplication.run(CustApp.class,args);
	}
}
