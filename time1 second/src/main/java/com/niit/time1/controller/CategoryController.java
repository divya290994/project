package com.niit.time1.controller;

import java.util.ArrayList;
import java.util.List;


import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.google.gson.Gson;
import com.niit.time1.bean.Category;
import com.niit.time1.dao.CategoryDAO;

@Controller
public class CategoryController {
/*	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@RequestMapping("/product")
	public ModelAndView getAllCategories() {

		List<Category> categorylist = categoryDAO.getAllCategories();
		String obj1;
		ModelAndView mv = new ModelAndView();
		Gson gson=new Gson();
		obj1=gson.toJson(categorylist);
		mv.addObject("category",obj1);
		return mv;
	}
	
	
	*/
}




