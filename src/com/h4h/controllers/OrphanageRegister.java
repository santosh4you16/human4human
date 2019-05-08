package com.h4h.controllers;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.h4h.pojo.OrphnageSignup;

@Controller
public class OrphanageRegister {
	
	
	@RequestMapping("/orphnageform")
	public String orpform() {
		return "orpform";
	}
	
	
	
	@RequestMapping("/orphanageheader")
		public String orphanage_header() {
			return "orphanage_header";
		}
	@RequestMapping("/footer")
	public String Footer() {
		return "Footer";
	}
	
	@RequestMapping("/childdetails")
	public String child_detailenter() {
		return "child_detailenter";
	}
	@RequestMapping("/orphanslider")
	public String orphanslider() {
		return "orphanslider";
	}
	
	
	
		@RequestMapping(value="/orpreg",method=RequestMethod.GET)
		public ModelAndView reg(@RequestParam("oname")String orphanagenm,@RequestParam("email")String email
								,@RequestParam("loginame")String lname,@RequestParam("pwd")String pwd,
								@RequestParam("address")String add,@RequestParam("state")String state,
								@RequestParam("city")String city,@RequestParam("pincode")String pc,@RequestParam("phno")String phno)
								{
			String address= add+" "+city+" "+pc;
			
			OrphnageSignup os =new OrphnageSignup();
			os.setOrphanname(orphanagenm);
			os.setEmail(email);
			os.setState(state);
			os.setAddress(address);
			os.setPhno(phno);
			os.setLogin_name(lname);
			os.setPassword(pwd);
			
			
			SessionFactory sessF=new Configuration().configure().buildSessionFactory();
			Session sess=sessF.openSession();
			sess.beginTransaction();
			sess.save(os);
			sess.getTransaction().commit();
			
			return new ModelAndView("orpform");
		}
	}

