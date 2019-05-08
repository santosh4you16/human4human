package com.h4h.controllers;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.h4h.pojo.ChildDetails;
import com.h4h.sessionfactory.SessFactory;

@Controller
public class ChildRegister {
	

	@RequestMapping("/showdetails")
	public String ShowChildDetails() {
		return "ShowChildDetails";
	}
	

	@RequestMapping("/showchilddetails")
	public String showchilddetails() {
		return "showchilddetails";
	}
	
	@RequestMapping(value="/childregister",method=RequestMethod.GET)
	public ModelAndView creg(@RequestParam("oname")String orphanname,@RequestParam("cname")String childname
			,@RequestParam("age")int age,@RequestParam("gender")String gender,@RequestParam("cpic")byte[] cpic) {
		
		ChildDetails cd = new ChildDetails();
		cd.setOrphanname(orphanname);
		cd.setChild_name(childname);
		cd.setAge(age);
		cd.setGender(gender);
		cd.setCpic(cpic);
		
		SessionFactory sf=SessFactory.getSessFact();
		Session s=sf.openSession();
		s.beginTransaction();
		s.save(cd);
		s.getTransaction().commit();
		return new ModelAndView("disp");
		
		
	}

}
