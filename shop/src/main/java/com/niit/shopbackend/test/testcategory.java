package com.niit.shopbackend.test;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopbackend.DAO.categoryDAOimpl;

public class testcategory {
static AnnotationConfigApplicationContext context;
	

	public static void main(String[] args)
	{
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shopingcart");
		context.refresh();
	   System.out.println("Hello");
	}
	
	

	
	}





