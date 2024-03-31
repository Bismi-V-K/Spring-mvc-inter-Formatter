package com.spring.mvc.inter.format.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.format.FormatterRegistry;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.spring.mvc.inter.format.formatters.PhoneNumberFormatter;

@EnableWebMvc
@Configuration
@ComponentScan(basePackages = "com.spring.mvc.inter.format.controller")
public class Config implements WebMvcConfigurer{

	@Bean
	InternalResourceViewResolver view() {
		InternalResourceViewResolver viewresolver= new InternalResourceViewResolver();
		viewresolver.setPrefix("/WEB-INF/view/");
		viewresolver.setSuffix(".jsp");
		return viewresolver;
	}
	
	@Override
	public void addFormatters(FormatterRegistry registry) {
		registry.addFormatter(new PhoneNumberFormatter());
	}
}
