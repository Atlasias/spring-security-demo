package com.legacy.base.config;

import java.util.HashMap;

import javax.servlet.ServletContextListener;

import org.springframework.boot.web.server.WebServerFactoryCustomizer;
import org.springframework.boot.web.servlet.ServletListenerRegistrationBean;
import org.springframework.boot.web.servlet.server.ConfigurableServletWebServerFactory;
import org.springframework.boot.web.servlet.server.Jsp;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import com.legacy.base.listener.SessionTimeoutListener;

@Configuration
public class WebConfig implements WebMvcConfigurer{
	

    @Bean
    public ViewResolver jspViewResolver() {
        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
        viewResolver.setViewClass(JstlView.class);
        viewResolver.setPrefix("/WEB-INF/views/");
        viewResolver.setSuffix(".jsp");
        return viewResolver;
    }
    
    
    @Bean
    public View jsonView() {
        return new MappingJackson2JsonView();
    }
	
	/*
	 * @Bean public EmbeddedServletContainerCustomizer customizer() { return
	 * container -> { JspServlet jspServlet = new JspServlet(); HashMap<String,
	 * String> initParams = new HashMap<>(); initParams.put("mappedfile", "false");
	 * jspServlet.setInitParameters(initParams);
	 * container.setJspServlet(jspServlet); };
	 * 
	 * // Java 8 미만이라면 다음과 같이 해준다. // return new
	 * EmbeddedServletContainerCustomizer() { // @Override // public void
	 * customize(ConfigurableEmbeddedServletContainer container) { // JspServlet
	 * jspServlet = new JspServlet(); // HashMap<String, String> initParams = new
	 * HashMap<>(); // initParams.put("mappedfile", "false"); //
	 * jspServlet.setInitParameters(initParams); //
	 * container.setJspServlet(jspServlet); // } // }; }
	 */
	
	@Bean
	public WebServerFactoryCustomizer<ConfigurableServletWebServerFactory> webServerFactoryCustomizer() {
	    return (factory) -> {
	    	Jsp jspServlet = new Jsp(); 
	    	HashMap<String,String> initParams = new HashMap<>(); 
	    	initParams.put("mappedfile", "false");
		   	jspServlet.setInitParameters(initParams);
		   	 factory.setJsp(jspServlet);
	    };
	}
	
	
	  @Override public void addResourceHandlers(ResourceHandlerRegistry registry) {
	  // registry.addResourceHandler("/css/**").addResourceLocations("css/"); 
	  //registry.addResourceHandler("/images/**").addResourceLocations("images/"); 
	  //registry.addResourceHandler("/js/**").addResourceLocations("js/"); 
	  //registry.addResourceHandler("/fonts/**").addResourceLocations("fonts/");
	  //registry.addResourceHandler("/plugins/**").addResourceLocations("/plugins/"); 
	  //.addResourceLocations("classpath:/m/").setCachePeriod(20);
	  
	  registry.addResourceHandler("/css/**").addResourceLocations("resources/css/").setCachePeriod(20);
	  registry.addResourceHandler("/images/**").addResourceLocations("resources/images/").setCachePeriod(20);
	  registry.addResourceHandler("/img/**").addResourceLocations("resources/img/").setCachePeriod(20);
	  registry.addResourceHandler("/js/**").addResourceLocations("resources/js/").setCachePeriod(20);
	  registry.addResourceHandler("/fonts/**").addResourceLocations("resources/fonts/").setCachePeriod(20);
	  
	  
	  }
	 
	/*
	 * private static final String[] CLASSPATH_RESOURCE_LOCATIONS = {
	 * "classpath:/META-INF/resources/", "classpath:/resources/",
	 * "classpath:/static/", "classpath:/public/", };
	 * 
	 * @Override public void addResourceHandlers(ResourceHandlerRegistry registry) {
	 * //// Spring 3.1+ if (!registry.hasMappingForPattern("/resources/**")) {
	 * registry.addResourceHandler("/resources/**")
	 * .addResourceLocations(CLASSPATH_RESOURCE_LOCATIONS); }
	 * 
	 * // Spring 4.1+ if (!registry.hasMappingForPattern("/resources/**")) {
	 * registry.addResourceHandler("/resources/**")
	 * .addResourceLocations(CLASSPATH_RESOURCE_LOCATIONS) .setCachePeriod(3600)
	 * .resourceChain(true) .addResolver(new PathResourceResolver()); }
	 * 
	 * // Spring 4.3.1+ if (!registry.hasMappingForPattern("/resources/**")) {
	 * registry.addResourceHandler("/resources/**")
	 * .addResourceLocations(CLASSPATH_RESOURCE_LOCATIONS) .setCachePeriod(3600)
	 * .resourceChain(true) .addResolver(new GzipResourceResolver())
	 * .addResolver(new PathResourceResolver()); } }
	 */
	
}
