package com.niit.ShopingCartBackEnd;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.modal.Category;

public class CategoryTest {
	
	static AnnotationConfigApplicationContext context;
	
	public static void main(String[] args) {
		
		
	    context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shopingcart.config");
		context.refresh();
		
	Category c =(Category)	  context.getBean("category");
	
	CategoryDAO categoryDAO = (CategoryDAO)  context.getBean("categoryDAO");
	
	
	c.setId("TAB_003");
	c.setName("Tablet");
	c.setDescription("Tablet product");
	
	
	categoryDAO.saveOrUpdate(c);
	List<Category>  list =    categoryDAO.list();
	
	for(Category cat : list)
	{
		System.out.println(cat.getId()  + ":" +  cat.getName()  + ":"+  cat.getDescription());
	}
		
		
	}

}
