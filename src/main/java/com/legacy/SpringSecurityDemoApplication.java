package com.legacy;

import java.util.Arrays;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.autoconfigure.jdbc.DataSourceTransactionManagerAutoConfiguration;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Repository;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

@ServletComponentScan // @WebListener 스캔
@SpringBootApplication
@EnableAutoConfiguration(exclude = { DataSourceTransactionManagerAutoConfiguration.class,
		DataSourceAutoConfiguration.class })
public class SpringSecurityDemoApplication implements WebApplicationInitializer {

	public static void main(String[] args) {
		SpringApplication.run(SpringSecurityDemoApplication.class, args);
	}


	/**
	 * print out all loaded beans
	 * */
	
	  @Bean
	  public CommandLineRunner commandLineRunner(ApplicationContext ctx) { return
	  args -> {
	  
	  System.out.println("Let's inspect the beans provided by Spring Boot:");
	  
	  String[] beanNames = ctx.getBeanDefinitionNames(); Arrays.sort(beanNames);
	  for (String beanName : beanNames) { System.out.println(beanName); } }; }
	 


	@Override 
	public void onStartup(ServletContext servletContext) throws ServletException { 
		/*
		 * AnnotationConfigWebApplicationContext annotationConfigWebApplicationContext =
		 * new AnnotationConfigWebApplicationContext();
		 * annotationConfigWebApplicationContext.setConfigLocation("com.legacy");
		 * 
		 * WebApplicationContext webAppContext = annotationConfigWebApplicationContext;
		 * 
		 * servletContext.addListener(new
		 * ContextLoaderListener(annotationConfigWebApplicationContext));
		 * servletContext.addListener(new RequestContextListener());
		 * //session event publisher for embedded tomcat 
		 * servletContext.addListener(new HttpSessionEventPublisher()); 
		 * servletContext.addListener(new
		 * SessionTimeoutListener());
		 * 
		 * DispatcherServlet dispatcherServlet = new DispatcherServlet(webAppContext);
		 * dispatcherServlet.setThrowExceptionIfNoHandlerFound(true);
		 * ServletRegistration.Dynamic dispatcher =
		 * servletContext.addServlet("dispatcher", dispatcherServlet);
		 * dispatcher.setLoadOnStartup(1); dispatcher.addMapping("/");
		 */
		AnnotationConfigWebApplicationContext applicationContext = new AnnotationConfigWebApplicationContext();
		DispatcherServlet dispatcherServlet = new DispatcherServlet(applicationContext);
		dispatcherServlet.setThreadContextInheritable(true);

		ServletRegistration.Dynamic dispatcher = servletContext.addServlet("dispatcherServlet", dispatcherServlet);
		dispatcher.setLoadOnStartup(1);
		dispatcher.addMapping("/");
		//this option is for spring websocket
		dispatcher.setAsyncSupported(true); 

	}


}
