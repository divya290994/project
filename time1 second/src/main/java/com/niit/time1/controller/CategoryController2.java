package com.niit.time1.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shop.model.category;
import com.niit.shopbackend.DAO.categoryDAO;



@Controller
public class CategoryController2 {

	@Autowired
	private categoryDAO categoryDao;
	/*AnnotationConfigApplicationContext context;
	
	public CategoryController2()
	{
		context=new AnnotationConfigApplicationContext();
		context.scan("com.niit.shopbackend.config");
		context.refresh();
		categoryDao=(categoryDAO) context.getBean("categoryDao");
	}
	*/

	/*@RequestMapping("/addCategory")
	public ModelAndView addCategory(@ModelAttribute category category) {
		categoryDao.saveOrUpdate(category);
	  return new ModelAndView("/adminHome");
	 }

	
	
	
	@RequestMapping("/getAllCategories")
	public ModelAndView getAllCategories() {

		System.out.println("getAllCategories");
		
		List<category> categoryList = categoryDao.list();
		
		ModelAndView mv = new ModelAndView("/categoryList");
		mv.addObject("categoryList", categoryList);

		return mv;
	}
	
	
	@RequestMapping("/updateCategories")
	public ModelAndView updateCategory(@ModelAttribute("category") ArrayList<category> categories)
	{
		category c =categories.get(0);
		categoryDao.saveOrUpdate(c);
		
		System.out.println("updating category");
		ModelAndView mv = new ModelAndView("/categoryList");
		
	    List<category> categoryList = categoryDao.list();
		mv.addObject("categoryList", categoryList);
		
		return mv;
	}*/

}
