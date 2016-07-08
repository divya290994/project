package com.niit.shopingcart.dao;

import java.util.List;
import org.springframework.stereotype.Repository;

import com.niit.shopingcart.modal.Category;
import com.niit.shopingcart.modal.Product;

public interface ProductDAO {


	public List<Product> list();

	public Product get(String id);
	
	public Product getByName(String name);

	public void saveOrUpdate(Product product);

	public void delete(String id);
	
	public List<Product> getAllProducts();


}
