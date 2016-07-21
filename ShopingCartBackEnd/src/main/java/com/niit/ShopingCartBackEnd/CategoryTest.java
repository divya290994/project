package com.niit.ShopingCartBackEnd;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.modal.Category;
import com.niit.shopingcart.modal.Supplier;

public class CategoryTest {
	
	static AnnotationConfigApplicationContext context;
	
	public static void main(String[] args) {
		
		
	    context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shopingcart.config");
		context.refresh();
		
	Category c =(Category)	  context.getBean("category");
	
	
	CategoryDAO categoryDAO = (CategoryDAO)  context.getBean("categoryDAO");
	
	
	
	//c.setId("PD_001");
		c.setName("Titan");
		c.setDescription("xyz");
		
		
		
		//c.setId("PD_002");
		c.setName("Fossil");
		c.setDescription("cba");
		
		
		//c.setId("PD_003");
		c.setName("Sonata");
		c.setDescription("WaterProof");
		
		
		categoryDAO.saveOrUpdate(c);
	
	List<Category>  list =categoryDAO.list();
	
	for(Category cat : list)
	{
		System.out.println(cat.getId()  + ":" +  cat.getName()  + ":"+  cat.getDescription());
	}
		
		
	}

}
