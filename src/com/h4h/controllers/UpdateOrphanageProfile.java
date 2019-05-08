package com.h4h.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
public class UpdateOrphanageProfile {
	
	@RequestMapping("/updateorphanprofile")
	public String updateOrphanProfile() {
		return "updateOrphanProfile";
	}
	
	@RequestMapping(value="/orpupdate",method=RequestMethod.GET)
	public ModelAndView update(HttpServletRequest request, @RequestParam("oname")String orphanagenm,@RequestParam("email")String email
							,@RequestParam("loginame")String lname,@RequestParam("pwd")String pwd,
							@RequestParam("address")String add,@RequestParam("state")String state,
							@RequestParam("city")String city,@RequestParam("pincode")String pc,@RequestParam("phno")String phno)
							{
		HttpSession session = request.getSession(true);
		
		
		String value = (String)session.getAttribute("orpname");
							
		String address= add+" "+city+" "+pc;
		
		OrphnageSignup os =new OrphnageSignup();
		os.setOrphanname(value);
		os.setEmail(email);
		os.setState(state);
		os.setAddress(address);
		os.setPhno(phno);
		os.setLogin_name(lname);
		os.setPassword(pwd);
		
		
		SessionFactory sessF=new Configuration().configure().buildSessionFactory();
		Session sess=sessF.openSession();
		sess.beginTransaction();
		sess.update(os);
		sess.getTransaction().commit();
		
		return new ModelAndView("orpform");
	}
		
		
							
}
