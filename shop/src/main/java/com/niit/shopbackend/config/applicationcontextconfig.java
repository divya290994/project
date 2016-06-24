package com.niit.shopbackend.config;

import java.io.IOException;
import java.util.Locale.Category;
import java.util.Properties;

import javax.annotation.ManagedBean;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate3.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.shopbackend.DAO.categoryDAOimpl;
import com.niit.shopbackend.model.category;



@Configuration 
@ComponentScan("com.niit.shop")
@EnableTransactionManagement
public class applicationcontextconfig<CategoryDAO>{
	
	@Bean(name="dataSource")
	public DataSource getDataSource(){
		BasicDataSource dataSource = new BasicDataSource();
    	dataSource.setDriverClassName("com.mysql.jdbc.Driver");
    	dataSource.setUrl("jdbc:mysql://localhost:3306/niitdb");
    	dataSource.setUsername("root");
    	dataSource.setPassword("root");
    	
    	return dataSource;
    }
    
    
    private Properties getHibernateProperties() {
    	Properties properties = new Properties();
    	properties.put("hibernate.show_sql", "true");
    	properties.put("hibernate.dialect", "org.hibernate.dialect.MySQLDialect");
    	return properties;
    }
    @Autowired
    @Bean(name="sessionFactory")
    public SessionFactory getSessionFactory(DataSource dataSource) {
    	LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
    	sessionBuilder.addProperties(getHibernateProperties());
    	sessionBuilder.addAnnotatedClasses(category.class);
    	return sessionBuilder.buildSessionFactory();
    }
    
   
	@SuppressWarnings("deprecation")
	@Autowired
    @Bean(name="transactionManager")
    public HibernateTransactionManager getTransactionManager(
			SessionFactory sessionFactory) {
		@SuppressWarnings("deprecation")
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(
				sessionFactory);

		return transactionManager;
	}
    
    @Autowired
    @Bean(name="CategoryDAO")
    public categoryDAOimpl getcategoryDAO(SessionFactory SessionFactory){

    return new categoryDAOimpl(SessionFactory);
}
}


    
    
    
    
    
    
		
	

