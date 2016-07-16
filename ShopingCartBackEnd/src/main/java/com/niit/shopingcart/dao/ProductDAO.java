package com.niit.shopingcart.dao;

import java.util.List;

import com.niit.shopingcart.modal.Category;
import com.niit.shopingcart.modal.Product;
import com.niit.shopingcart.modal.Supplier;

public interface ProductDAO {


	public List<Product> list();

	public Product get(int id);
	
	public Product getByName(String name);
	
	public Product getByDescription(String description);
	
	public void saveOrUpdate(Product product);

	public void delete(int id);
	
	public List<Product> getAllProducts();
	


}
