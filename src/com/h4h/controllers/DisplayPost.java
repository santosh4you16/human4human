package com.h4h.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.h4h.pojo.Event;
import com.h4h.pojo.OrphnageSignup;
import com.h4h.sessionfactory.SessFactory;

@Controller
@SessionAttributes("disppost")
public class DisplayPost {
	
	@RequestMapping("/post")
	public ModelAndView post(HttpServletRequest request) {
		
		Session sess = null;
		
		
		
		
			SessionFactory sf=SessFactory.getSessFact();
			Session s=sf.openSession();
			Criteria crit = s.createCriteria(Event.class);
			ProjectionList proList1 = Projections.projectionList();
			ModelAndView model=new ModelAndView("index");
			proList1.add(Projections.property("date"));
			proList1.add(Projections.property("time"));
			proList1.add(Projections.property("venue"));
			proList1.add(Projections.property("description"));
			
			crit.setProjection(proList1);
			
			Iterable list = crit.list();
	
	       return new ModelAndView("index","disppost",list);

}

}
