package com.niit.time1.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;
import com.niit.time1.bean.Category;

@Repository

public class CategoryDAO {
	public List<Category> getAllCategories() {

		List<Category> list = new ArrayList<Category>();
		Category c1 = new Category();
		c1.setId("CAT_w1");
		c1.setName("sonata");
		

		list.add(c1);

		c1 = new Category();
		c1.setId("CAT_w2");
		c1.setName("fastrack");
		

		list.add(c1);

		c1 = new Category();
		c1.setId("CAT_w3");
		c1.setName("Titan");
		
		
		list.add(c1);
        return list;
        }
}
	
