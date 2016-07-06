package com.niit.time1.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.dao.UserDAO;


import com.niit.shopingcart.dao.UserDAO;


@Controller
public class logincontroller {
	
	@Autowired
	UserDAO obj2;
	@RequestMapping("/isvalidUser")
	public ModelAndView showmessage(@RequestParam(value="name")String name,
			@RequestParam(value="password")String password){
	System.out.println("is valid");
	String message;
	ModelAndView mv=new ModelAndView();
	
	if (obj2.isvalidUser(name,password))
	{
		
		message="valid credentials";
		mv=new ModelAndView("home");
	}
	
	else
	{
		message="invalid credentials";
		mv=new ModelAndView("");
	
	}
   
    mv.addObject("message",message);
    mv.addObject("name",name);
    return mv;
    }
	@RequestMapping("/")
	public String gotohome() {
		return "home";
	}
	@RequestMapping("/Aboutus")
	public String gotoAboutus() {
		return "Aboutus";
	}
	@RequestMapping("/brand")
	public String gotobrand() {
		return "brand";
	}
	@RequestMapping("/signup")
	public String signup() {
		return "signup";
	}
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/admin")
	public String categoryList() {
		return "admin";
	}
	
	
	

}

