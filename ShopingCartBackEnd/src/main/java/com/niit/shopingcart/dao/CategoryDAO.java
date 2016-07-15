package com.niit.shopingcart.dao;

import java.util.List;

import com.niit.shopingcart.modal.Category;
import com.niit.shopingcart.modal.Supplier;

public interface CategoryDAO {


	public List<Category> list();

	public Category get(int id);
	
	public Category getByName(String name);
	
	public Category getByDescription(String description);

	public void saveOrUpdate(Category category);

	public void delete(int id);
	
	public List<Category> getAllCategorys();
	

	
}