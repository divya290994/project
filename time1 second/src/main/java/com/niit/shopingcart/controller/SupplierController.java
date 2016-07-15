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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.niit.shopingcart.dao.SupplierDAO;
import com.niit.shopingcart.modal.Supplier;


@Controller
public class SupplierController {
	
	@Autowired
	private SupplierDAO supplierdao;


@RequestMapping(value = "/supplierlist", method = RequestMethod.GET)
public String listSuppliers(Model model) {
model.addAttribute("supplier", new Supplier());
model.addAttribute("supplierlist", this.supplierdao.list());
return "supplierlist";
}


@RequestMapping(value="/supplierlist/add", method = RequestMethod.POST)

public String addSupplier(@ModelAttribute("supplier") Supplier supplier){
supplierdao.saveOrUpdate(supplier);
return "redirect:/supplierlist";

}

@RequestMapping("supplierlist/remove/{id}")
public String removeSupplier(@PathVariable("id") int id,ModelMap model) throws Exception{

try {
supplierdao.delete(id);
model.addAttribute("message","Successfully Added");
} catch (Exception e) {
model.addAttribute("message",e.getMessage());
e.printStackTrace();
}
//redirectAttrs.addFlashAttribute(arg0, arg1)
return "redirect:/supplierlist";
}

@RequestMapping("supplierlist/edit/{id}")
public String editSupplier(@PathVariable("id") int id, Model model){
System.out.println("editSupplier");
model.addAttribute("supplier", this.supplierdao.get(id));
model.addAttribute("listSuppliers", this.supplierdao.list());
return "supplierlist";

}
}




