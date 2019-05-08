package com.h4h.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.h4h.pojo.Donate;
import com.h4h.pojo.Users;
import com.h4h.sessionfactory.SessFactory;



@Controller
public class Userprofile { 
	
	@RequestMapping("/myprof")
	public ModelAndView myProf(HttpServletRequest req) {
		HttpSession sess=req.getSession();
		String nm=(String)sess.getAttribute("user");
		System.out.println(nm);
		SessionFactory sf=SessFactory.getSessFact();
		Session s=sf.openSession();
		
		Criteria crit=s.createCriteria(Users.class);
		crit.add(Restrictions.eq("name", nm));
		List res=(List)crit.list();
		System.out.println(res);
		
		ModelAndView  map=new ModelAndView("userprofview");
		map.addObject("list",res);
		return map;
	}
	
	@RequestMapping("/logout")
	public ModelAndView logOut(HttpServletRequest req) {
		HttpSession sess=req.getSession();
		sess.invalidate();
		return new ModelAndView("userlogin");
	}
	
	@RequestMapping("/cart")
	public ModelAndView cart(HttpServletRequest req) {
		HttpSession sess=req.getSession();
		String nm=(String)sess.getAttribute("user");
		
		SessionFactory sf=SessFactory.getSessFact();
		Session s=sf.openSession();
		
		Criteria crit=s.createCriteria(Donate.class);
		crit.add(Restrictions.eq("username", nm));
		List res=(List)crit.list();
		System.out.println(res);
		
		ModelAndView  map=new ModelAndView("usercart");
		map.addObject("cart",res);
		return map;
	}
	
	@RequestMapping("/orphanagelist")
	public ModelAndView orlist() {
		SessionFactory sf=SessFactory.getSessFact();
		Session s=sf.openSession();
		Query query=s.createQuery("FROM OrphnageSignup");
		List res=query.list();
		
		return new ModelAndView("orphanlist","orphn",res);
	}
	

}
