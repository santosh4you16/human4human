package com.h4h.controllers;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.h4h.pojo.ChildDetails;
import com.h4h.sessionfactory.SessFactory;

@Controller
@SessionAttributes("dispchild")
public class ShowChildDetails {
	
	
	@RequestMapping("/lalalulu")
	public ModelAndView showChildDetails(HttpServletRequest request) {
		Session sess = null;
		
		
			SessionFactory sf=SessFactory.getSessFact();
			Session s=sf.openSession();
			Criteria crit = s.createCriteria(ChildDetails.class);
			ProjectionList proList = Projections.projectionList();
			ModelAndView model=new ModelAndView("showchilddetails");
			proList.add(Projections.property("orphanname"));
			proList.add(Projections.property("child_name"));
			proList.add(Projections.property("age"));
			proList.add(Projections.property("gender"));
			
			crit.setProjection(proList);
			
			List list = crit.list();
	
	       return new ModelAndView("showchilddetails","dispchild",list);

}
}
