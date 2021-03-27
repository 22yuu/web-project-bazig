package com.bazig.test;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class BazigApplication extends SpringBootServletInitializer {
	
	String PROPERTIES = "spring.config.location=classpath:/application.yml"
			+", classpath:/security-oauth.yml";
	
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(BazigApplication.class);
	}
	
	public static void main(String[] args) {
//		new SpringApplicationBuilder(BazigApplication.class)
//					.properties(args)
//					.run(args);
	
		SpringApplication.run(BazigApplication.class, args);
	}
}
