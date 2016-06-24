package com.niit.shopbackend.DAO;

import java.util.List;

import com.niit.shopbackend.model.category;


public interface categoryDAO {
	public List<category> list();

	public categoryDAO get(String id);

	public void saveOrUpdate(categoryDAO category);

}
