package com.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.example")
public class SpringCrud3Application {

	public static void main(String[] args) {
		SpringApplication.run(SpringCrud3Application.class, args);
	}

}
