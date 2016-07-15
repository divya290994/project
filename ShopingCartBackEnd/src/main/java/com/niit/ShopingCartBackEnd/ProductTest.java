package com.niit.ShopingCartBackEnd;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.ProductDAO;
import com.niit.shopingcart.dao.SupplierDAO;
import com.niit.shopingcart.modal.Product;
import com.niit.shopingcart.modal.Supplier;


public class ProductTest {
	
	static AnnotationConfigApplicationContext context;
	

	public static void main(String[] args) {
		
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shopingcart.config");
		context.refresh();
		

	Product p =(Product)	  context.getBean("product");
		
	ProductDAO productDAO = (ProductDAO)  context.getBean("ProductDAO");
	
	
	

	//p.setId("SUP_001");
	p.setName("Titan shop");
	p.setDescription("xyz");

	//p.setId("SUP_002");
	p.setName("Fastrack shop");
	p.setDescription("zyx");
	

	//p.setId("SUP_003");
	p.setName("Sonata shop");
	p.setDescription("abc");
	
	
	productDAO.saveOrUpdate(p);
	
	List<Product>  list = productDAO.list();
	
	for(Product pd : list)
	{
		System.out.println(pd.getId()  + ":" +  pd.getName()  + ":"+  pd.getDescription());
	}
	}
}
		
		
	
