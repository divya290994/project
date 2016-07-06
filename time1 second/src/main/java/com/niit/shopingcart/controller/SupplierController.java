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
	SupplierDAO supdao;

	@Autowired
		Supplier sup;

		
		
		@RequestMapping( "/supplier")
		public ModelAndView listSupplier() {
			List<Supplier> list=supdao.list();
			ModelAndView mv=new ModelAndView("/supplier");
			mv.addObject("list", list);
			for(Supplier sup : list)
			{
				System.out.println(sup.getId()  + ":" +  sup.getName()  + ":"+  sup.getAddress());
			}
			System.out.println(list);
			return mv;
			
		}
	
	//For add and update supplier both
	@RequestMapping(value= "/supplier/add", method = RequestMethod.POST)
	public String addSupplier(@ModelAttribute("supplier") Supplier supplier){
		
	
			supdao.saveOrUpdate(supplier);
		
		return "redirect:/supplier";
		
	}
	
	@RequestMapping("supplier/remove/{id}")
    public String removeSupplier(@PathVariable("id") String id,ModelMap model) throws Exception{
		
       try {
		supdao.delete(id);
		model.addAttribute("message","Successfully Added");
	} catch (Exception e) {
		model.addAttribute("message",e.getMessage());
		e.printStackTrace();
	}
       //redirectAttrs.addFlashAttribute(arg0, arg1)
        return "redirect:/supplier";
    }
 
    @RequestMapping("supplier/edit/{id}")
    public String editSupplier(@PathVariable("id") String id, Model model){
    	System.out.println("editSupplier");
        model.addAttribute("supplier", this.supdao.get(id));
        model.addAttribute("listSupplier", this.supdao.list());
        return "supplier";
    }
	}
