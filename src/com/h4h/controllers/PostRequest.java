package com.h4h.controllers;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.h4h.pojo.Orequest;
import com.h4h.sessionfactory.SessFactory;

@Controller
public class PostRequest{
	
	@RequestMapping("/postrequest")
	public String postrequest() {
		return "postrequest";
	}
	
	
	@RequestMapping(value="/request",method=RequestMethod.GET)
	public void prequest(@RequestParam("area")String txtarea,@RequestParam("dateofrequest")Date dateofrequest,HttpSession session)
	{

		String lname=(String)session.getAttribute("login_name");
		Orequest or = new Orequest();
		//or.setRequestid(0);
		or.setOrphanname(lname);
		or.setRequest(txtarea);
		or.setDateofrequest(dateofrequest);
		
		SessionFactory sf=SessFactory.getSessFact();
		Session s=sf.openSession();
		s.beginTransaction();
		s.save(or);
		s.getTransaction().commit();
		//return new ModelAndView("test");
	}	
	
}
