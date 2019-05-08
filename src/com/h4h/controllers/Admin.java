package com.h4h.controllers;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.h4h.pojo.AdminLogin;
import com.h4h.sessionfactory.SessFactory;

@Controller
public class Admin {
	
	@RequestMapping("/adminlogin")
	public String adminlogin() {
		return "adminlogin";
	}
	
	
	@RequestMapping("/AdminHomePage1")
	public String AdminHomePage1() {
		return "AdminHomePage1";
	}
	

	@RequestMapping("/adminsubmit")
	public ModelAndView submitform(@RequestParam("adminname")String adminname,@RequestParam("pass")String password)
	{
		SessionFactory sf=SessFactory.getSessFact();
		Session s=sf.openSession();
		
		AdminLogin data=s.get(AdminLogin.class,adminname);
		if(data==null) {
			return new ModelAndView("adminlogin"); 
		}
		
		String adname=data.getUsername().trim();
		String pass=data.getPassword().trim();
		String pd=data.getPassword().trim();
		//String nm=data.getName().trim();
		if(adminname.equals(adname)&&password.equals(pass)) {
			return new ModelAndView("AdminHomePage1");
		}else {
			return new ModelAndView("adminlogin");
		}
		
		
}

}
