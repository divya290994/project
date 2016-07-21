package com.niit.time1.controller;

import java.util.Map;

import org.h2.engine.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.dao.UserDAO;

@Controller
public class logincontroller {

	@Autowired
	UserDAO obj2;
	private String name;

	@RequestMapping("/isValid")

	public ModelAndView show(@RequestParam(value = "name") String name,
			@RequestParam(value = "password") String password) {

		System.out.println("am in login controller");

		String message;
		ModelAndView mv;

		if (UserDAO.isvalidUser(name, password)) {
			message = "Valid User";
			mv = new ModelAndView("admin");

		} else {

			message = "Invalid User";
			mv = new ModelAndView("login");
		}

		mv.addObject("message", message);
		mv.addObject("name", name);
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
	public String gotologin() {
		return "login";
	}

	@RequestMapping("/admin")
	public String categorylist() {
		return "admin";
	}

	@RequestMapping("/product1")
	public String brand() {
		return "product1";
	}

	@RequestMapping("/cart")
	public String gotocart() {
		return "cart";
	}

	@RequestMapping("/index")
	public String gotoindex() {
		return "index";
	}

	@RequestMapping("/memberDetails")
	public String gotomemberDetails() {
		return "memberDetails";
	}

	@RequestMapping("/register")
	public String gotoregister() {
		return "register";
	}

	@RequestMapping("/exception")
	public String gotoexception() {
		return "exception";
	}

	@RequestMapping("/confirmDetails")
	public String gotoconfirmDetails() {
		return "confirmDetails";
	}
	
	@RequestMapping("/upload")
	public String gotouploadMultiple() {
		return "upload";
	}

}
