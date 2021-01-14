package com.icss;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@EnableEurekaServer//启动eureka服务端
@SpringBootApplication//启动类
public class EurekaApp {
	public static void main(String[] args) {
		SpringApplication.run(EurekaApp.class,args);
	}
}