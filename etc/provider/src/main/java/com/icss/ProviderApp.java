package com.icss;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@EnableDiscoveryClient
@SpringBootApplication
@MapperScan ("com.icss.dao")
public class ProviderApp {
	public static void main(String[] args) {
		SpringApplication.run(ProviderApp.class,args);
	}
}
