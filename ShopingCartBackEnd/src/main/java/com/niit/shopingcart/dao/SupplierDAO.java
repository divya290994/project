package com.niit.shopingcart.dao;

import java.util.List;

import com.niit.shopingcart.modal.Category;
import com.niit.shopingcart.modal.Supplier;

public interface SupplierDAO {


	public List<Supplier> list();

	public Supplier get(String id);
	
	public Supplier getByName(String name);

	public void saveOrUpdate(Supplier supplier);

	public void delete(String id);
	

	


}



