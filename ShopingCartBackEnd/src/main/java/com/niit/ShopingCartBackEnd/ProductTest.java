package com.niit.ShopingCartBackEnd;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.ProductDAO;
import com.niit.shopingcart.modal.Product;


public class ProductTest {
	
	static AnnotationConfigApplicationContext context;
	
	
	public static void main(String[] args) {
		
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shopingcart.config");
		context.refresh();
		

	Product p =(Product)	  context.getBean("product");
		
	ProductDAO productDAO = (ProductDAO)  context.getBean("productDAO");
	
	
	

	p.setId("PD_001");
	p.setName("Titan");
	p.setDescription("xyz");
	
	p.setId("PD_001");
	p.setName("Sonata");
	p.setDescription("zyx");
	
	
	
	
	
	productDAO.saveOrUpdate(p);
	
	List<Product>  list = productDAO.list();
	
	for(Product pd : list)
	{
		System.out.println(pd.getId()  + ":" +  pd.getName()  + ":"+  pd.getDescription() + ":"+  pd.getPrice());
	}
	
	}
}
	
		
		
	
