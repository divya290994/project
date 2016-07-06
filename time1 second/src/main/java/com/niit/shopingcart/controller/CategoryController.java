package com.niit.shopingcart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.modal.Category;

@Controller
public class CategoryController {

@Autowired	
CategoryDAO catdao;

@Autowired
	Category cat;

	
	
	@RequestMapping( "/category")
	public ModelAndView listCategorys() {
		List<Category> list=catdao.list();
		ModelAndView mv=new ModelAndView("/category");
		mv.addObject("list", list);
		for(Category cat : list)
		{
			System.out.println(cat.getId()  + ":" +  cat.getName()  + ":"+  cat.getDescription());
		}
		System.out.println(list);
		return mv;
		
	}
	
	//For add and update category both
	@RequestMapping(value= "/category/add", method = RequestMethod.POST)
	public String addCategory(@ModelAttribute("category") Category category){
		
	
			catdao.saveOrUpdate(category);
		
		return "redirect:/categories";
		
	}
	
	@RequestMapping("category/remove/{id}")
    public String deleteCategory(@PathVariable("id") String id,ModelMap model) throws Exception{
		
       try {
		catdao.delete(id);
		model.addAttribute("message","Successfully Added");
	} catch (Exception e) {
		model.addAttribute("message",e.getMessage());
		e.printStackTrace();
	}
       //redirectAttrs.addFlashAttribute(arg0, arg1)
        return "redirect:/categories";
    }
 
    @RequestMapping("category/edit/{id}")
    public String editCategory(@PathVariable("id") String id, Model model){
    	System.out.println("editCategory");
        model.addAttribute("category", this.catdao.get(id));
        model.addAttribute("listCategorys", this.catdao.list());
        return "category";
        
        
       
    }
	}

	
