package com.niit.shopbackend.DAO;

import java.util.List;

import com.niit.shop.model.category;


public interface categoryDAO {
	
	public List<category> list();
	
	public category get(String id);

	public void saveOrUpdate(category c);

	public void delete(String id);
}
