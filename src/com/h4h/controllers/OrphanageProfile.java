package com.h4h.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.mapping.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.h4h.pojo.ChildDetails;
import com.h4h.pojo.OrphnageSignup;
import com.h4h.sessionfactory.SessFactory;

@Controller
@SessionAttributes("dispprofile")
public class OrphanageProfile {
	
	@RequestMapping("/profile")
	public ModelAndView showChildDetails(HttpServletRequest request) {
		HttpSession session = request.getSession(true);
		Session sess = null;
		
		String value = (String)session.getAttribute("orpname");
		
		
			SessionFactory sf=SessFactory.getSessFact();
			Session s=sf.openSession();
			Criteria crit = s.createCriteria(OrphnageSignup.class);
			crit.add(Restrictions.eqOrIsNull("orphanname",value));
			ProjectionList proList1 = Projections.projectionList();
			ModelAndView model=new ModelAndView("orphanageprofile1");
			proList1.add(Projections.property("orphanname"));
			proList1.add(Projections.property("email"));
			proList1.add(Projections.property("address"));
			proList1.add(Projections.property("state"));
			proList1.add(Projections.property("phno"));
			
			crit.setProjection(proList1);
			
			Iterable list = crit.list();
	
	       return new ModelAndView("orphanageprofile1","dispprofile",list);

}

}
