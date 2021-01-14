package com.icss;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;
import org.springframework.context.annotation.Bean;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;

@EnableZuulProxy
@SpringBootApplication
public class GatewayApp {
	public static void main(String[] args) {
		SpringApplication.run(GatewayApp.class,args);
	}

    @Bean
	public CorsFilter corsFilter(){
		final UrlBasedCorsConfigurationSource source=new UrlBasedCorsConfigurationSource();
		final CorsConfiguration config=new CorsConfiguration();
		config.setAllowCredentials(true);//允许Cookie跨域
		config.addAllowedHeader("*");//允许头部跨域
		config.addAllowedOrigin("*");//允许向服务提交的URI跨域
		config.addAllowedMethod("*");//允许提交方法跨域
		config.setMaxAge(86400L);
		source.registerCorsConfiguration("/**",config);
		return new CorsFilter(source);
	}
}
