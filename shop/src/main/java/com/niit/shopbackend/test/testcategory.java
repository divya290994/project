package com.niit.shopbackend.test;

import java.util.ArrayList;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shop.model.category;
import com.niit.shopbackend.DAO.categoryDAO;
import com.niit.shopbackend.DAO.categoryDAOimpl;

public class testcategory {
	


	static AnnotationConfigApplicationContext context;

	public static void main(String[] args) {

		
		context = new AnnotationConfigApplicationContext();
		System.out.println("test Category");
		context.scan("com.niit.shopbackend.config");
		context.refresh();
		
		category c =new category();
		categoryDAO categoryDAO = (categoryDAO) context.getBean("categoryDao");

		
		c.setId("003");
		c.setName("watch2");
		c.setDescription("wat_003");
		
		
		/*categoryDAO.delete("b");*/
		categoryDAO.saveOrUpdate(c);
		
		System.out.println("Hai");
		
		System.out.println("Welcome to  dao");
		
		System.out.println(categoryDAO);
		
		List<category> list = new ArrayList<category>();
		
		
		for (category cat: list) {
		System.out.println(cat.getId() + ":" + cat.getName() + ":" + cat.getDescription());
		}
	}
}


