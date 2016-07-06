package com.niit.ShopingCartBackEnd;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.dao.SupplierDAO;
import com.niit.shopingcart.modal.Category;
import com.niit.shopingcart.modal.Supplier;

public class SupplierTest {
	
	static AnnotationConfigApplicationContext context;
	
	
	public static void main(String[] args) {
		
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shopingcart.config");
		context.refresh();
		

	Supplier s =(Supplier)	  context.getBean("supplier");
		
	SupplierDAO supplierDAO = (SupplierDAO)  context.getBean("supplierDAO");
	
	
	

	s.setId("SUP_001");
	s.setName("Titan shop");
	s.setAddress("xyz");
	
	
	supplierDAO.saveOrUpdate(s);
	
	List<Supplier>  list = supplierDAO.list();
	
	for(Supplier sup : list)
	{
		System.out.println(sup.getId()  + ":" +  sup.getName()  + ":"+  sup.getAddress());
	}
		
		
	}

}
