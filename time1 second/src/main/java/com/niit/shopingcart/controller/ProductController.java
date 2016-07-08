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

import com.niit.shopingcart.dao.ProductDAO;
import com.niit.shopingcart.modal.Product;



@Controller
public class ProductController{

@Autowired
	private ProductDAO productdao;


@RequestMapping(value = "/productlist", method = RequestMethod.GET)
public String listProduct(Model model) {
model.addAttribute("product", new Product());
model.addAttribute("productlist", this.productdao.list());
return "productlist";
}


@RequestMapping(value="/productlist/add", method = RequestMethod.POST)

public String addProduct(@ModelAttribute("product") Product product){
productdao.saveOrUpdate(product);
return "redirect:/productlist";

}

@RequestMapping("productlist/remove/{id}")
public String removeProduct(@PathVariable("id") String id,ModelMap model) throws Exception{

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
public String editProduct(@PathVariable("id") String id, Model model){
System.out.println("edit");
model.addAttribute("product", this.productdao.get(id));
model.addAttribute("listProduct", this.productdao.list());
return "productlist";

}
}
