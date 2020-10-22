package com.legacy.base.config;

import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Lazy;
import org.springframework.context.annotation.Primary;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.legacy.base.mybatis.ReloadableSqlSessionFactoryBean;
import com.legacy.base.util.CamelCaseMap;

import net.sf.log4jdbc.Log4jdbcProxyDataSource;
import net.sf.log4jdbc.tools.Log4JdbcCustomFormatter;
import net.sf.log4jdbc.tools.LoggingType;


@Configuration
@Lazy
@EnableTransactionManagement
@MapperScan(annotationClass=Repository.class, basePackages="com.legacy.**.service", sqlSessionFactoryRef="sqlSessionFactory")
public class MybatisPersistenceConfig {
	
	@Bean(name="datasource")
	@Primary
	@ConfigurationProperties(prefix="spring.datasource.dev")
	public DataSource otpDataSource() throws SQLException {
	    try {
	        System.out.println("Preparing DataSource ::");
	        return DataSourceBuilder.create().build();
	    } catch (Exception e) {
	        e.printStackTrace();
	        return null;
	    }
	}
	
    @Bean(name = "sqlSessionFactory")
	public SqlSessionFactoryBean reloadableSqlSessionFactory(
			DataSource dataSource, ApplicationContext applicationContext) throws Exception {
    	
		
		  Log4jdbcProxyDataSource log4jdbcProxyDataSource = new
		  Log4jdbcProxyDataSource(dataSource); Log4JdbcCustomFormatter
		  log4JdbcCustomFormatter = new Log4JdbcCustomFormatter();
		  log4JdbcCustomFormatter.setLoggingType(LoggingType.MULTI_LINE);
		  log4JdbcCustomFormatter.setSqlPrefix("Formatted SQL -\n");
		  log4jdbcProxyDataSource.setLogFormatter(log4JdbcCustomFormatter);
		 
    	
        SqlSessionFactoryBean sqlSessionFactoryBean = new ReloadableSqlSessionFactoryBean();
        applySqlSessionFactoryConfig(sqlSessionFactoryBean, log4jdbcProxyDataSource, applicationContext);
        return sqlSessionFactoryBean;
    }
    @Bean
    public SqlSessionTemplate sqlSession(SqlSessionFactory sqlSessionFactory) {
        return new SqlSessionTemplate(sqlSessionFactory);
    }
   
 
	/*
	 * @Bean public PlatformTransactionManager transactionManager(DataSource
	 * dataSource) throws Exception { DataSourceTransactionManager
	 * transactionManager = new DataSourceTransactionManager(dataSource);
	 * transactionManager.setGlobalRollbackOnParticipationFailure(false); return
	 * transactionManager; }
	 */
	
	 @Bean 
	 public PlatformTransactionManager
	 dataSourceTransactionManager(DataSource dataSource) { 
		 return new DataSourceTransactionManager(dataSource); 
	 }
    
    private void applySqlSessionFactoryConfig(SqlSessionFactoryBean sqlSessionFactoryBean, DataSource dataSource, ApplicationContext applicationContext) throws Exception {
        sqlSessionFactoryBean.setConfigLocation(applicationContext.getResource("classpath:sqlmap/sqlmap-config.xml"));
        sqlSessionFactoryBean.setMapperLocations(applicationContext.getResources("classpath:sqlmap/mapper/**/*.xml"));
        sqlSessionFactoryBean.setDataSource(dataSource);
        //sqlSessionFactoryBean.setPlugins(interceptors());
        sqlSessionFactoryBean.setTypeAliases(new Class<?>[] {CamelCaseMap.class});
    }

	/*
	 * mybatis 관련 interceptor 추가
	 * private Interceptor[] interceptors() { PaginationInterceptor pagination = new
	 * PaginationInterceptor(
	 * "com.orm.mybatis.pagination.dialect.MySQLDialect");
	 * TableLoggingInterceptor tableLoggingInterceptor = new
	 * TableLoggingInterceptor(); Interceptor[] interceptors = new
	 * Interceptor[]{pagination, tableLoggingInterceptor}; return interceptors; }
	 */
}