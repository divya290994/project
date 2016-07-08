package com.niit.shopingcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.modal.Category;

@Controller
public class CategoryController {
	
	@Autowired
	private CategoryDAO categorydao;


@RequestMapping(value = "/categorylist", method = RequestMethod.GET)
public String listCategorys(Model model) {
model.addAttribute("category", new Category());
model.addAttribute("categoryList", this.categorydao.list());
return "categorylist";
}


@RequestMapping(value="/categorylist/add", method = RequestMethod.POST)

public String addCategory(@ModelAttribute("category") Category category){
categorydao.saveOrUpdate(category);
return "redirect:/categorylist";

}

@RequestMapping("categorylist/remove/{id}")
public String removeCategory(@PathVariable("id") String id,ModelMap model) throws Exception{

try {
categorydao.delete(id);
model.addAttribute("message","Successfully Added");
} catch (Exception e) {
model.addAttribute("message",e.getMessage());
e.printStackTrace();
}
//redirectAttrs.addFlashAttribute(arg0, arg1)
return "redirect:/categorylist";
}

@RequestMapping("categorylist/edit/{id}")
public String editCategory(@PathVariable("id") String id, Model model){
System.out.println("editCategory");
model.addAttribute("category", this.categorydao.get(id));
model.addAttribute("listCategorys", this.categorydao.list());
return "categorylist";

}
}


	
