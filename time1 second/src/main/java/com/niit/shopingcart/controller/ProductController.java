package com.niit.shopingcart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.dao.ProductDAO;
import com.niit.shopingcart.dao.SupplierDAO;
import com.niit.shopingcart.modal.Category;
import com.niit.shopingcart.modal.Product;
import com.niit.shopingcart.modal.Supplier;



@Controller
public class ProductController {
	
	@Autowired
	private ProductDAO productdao;


@RequestMapping(value = "/productlist", method = RequestMethod.GET)
public String listproducts(Model model) {
model.addAttribute("product", new Supplier());
model.addAttribute("productlist", this.productdao.list());
return "productlist";
}


@RequestMapping(value="/productlist/add", method = RequestMethod.POST)

public String addProduct(@ModelAttribute("product") Product product){
productdao.saveOrUpdate(product);
return "redirect:/productlist";

}

@RequestMapping("productlist/remove/{id}")
public String removeProduct(@PathVariable("id") int id,ModelMap model) throws Exception{

try {
productdao.delete(id);
model.addAttribute("message","Successfully Added");
} catch (Exception e) {
model.addAttribute("message",e.getMessage());
e.printStackTrace();
}
//redirectAttrs.addFlashAttribute(arg0, arg1)
return "redirect:/productlist";
}

@RequestMapping("productlist/edit/{id}")
public String editProduct(@PathVariable("id") int id, Model model){
System.out.println("editProduct");
model.addAttribute("product", this.productdao.get(id));
model.addAttribute("listProducts", this.productdao.list());
return "productlist";

}
}








