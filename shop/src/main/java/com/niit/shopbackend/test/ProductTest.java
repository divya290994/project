package com.niit.shopbackend.test;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopbackend.DAO.categoryDAO;
import com.niit.shopbackend.DAO.ProductDAO;
import com.niit.shopbackend.DAO.SupplierDAO;
import com.niit.shop.model.Product;
import com.niit.shop.model.Supplier;
import com.niit.shop.model.category;


public class ProductTest {
	
public static void main(String[] args) {
		
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		
		context.scan("com.niit.shop");
		context.refresh();
		
		Product p = (Product)context.getBean("product");
		
	  
	    p.setId("PRD_001");
	    p.setName("PRD001");
	    p.setDescription("This is PRD001");
	    p.setPrice(2000);
	    
	    p.setCategoryID("HK-001");
	    p.setSupplierID("SUP-001");
	    
	    ProductDAO productDAO = (ProductDAO)context.getBean("productDAO");
	    productDAO.saveOrUpdate(p);
		}
}
