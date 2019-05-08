package com.h4h.controllers;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.h4h.pojo.Users;

@Controller
public class Demo {
	

	
	@RequestMapping("/disppage")
	public String disp(){
		return "disp";
	}
	
	@RequestMapping("/form")
	public String formPage(){
		return "form";
	}
	@RequestMapping("/userlogin")
	public String userLoginPage(){
		return "userlogin";
	}
	
	@RequestMapping("/foodDonate")
	public String userFoodDonate(){
		return "userfooddonate";
	}
	@RequestMapping("/clothDonate")
	public String userClothDonate(){
		return "userclothdonate";
	}
	@RequestMapping("/moneyDonate")
	public String userMoneyDonate(){
		return "usermoneydonate";
	}
	@RequestMapping("/userprof")
	public String userProf(){
		return "userprofile";
	}
	
	
	@RequestMapping("/home")
	public String homePage(){
		return "../../index";
	}
	
}
