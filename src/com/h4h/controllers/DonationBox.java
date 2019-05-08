package com.h4h.controllers;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.h4h.pojo.Donate;
import com.h4h.pojo.OrphnageSignup;
import com.h4h.sessionfactory.SessFactory;

@Controller
public class DonationBox {
		
		@RequestMapping(value="/donbox",method=RequestMethod.GET)
		public ModelAndView cart(HttpServletRequest req,@RequestParam("vegetables")int veg, @RequestParam("fruits") int fruits,
												@RequestParam("rice")int rice,@RequestParam("wheat")int wheat,
												@RequestParam("dairyprod")int dairyprod,@RequestParam("cloths")int cloths,@RequestParam("state") String state) {
			
			Date date = Calendar.getInstance().getTime();  
            DateFormat dateFormat = new SimpleDateFormat("yyyy-MM -dd");  
            String strDate = dateFormat.format(date);  
			
            HttpSession sess=req.getSession(true);
            
			String nm=(String)sess.getAttribute("user");
			Donate db=new Donate();
			db.setDate(strDate);
			db.setUsername(nm); 
			db.setVegetable_kg(veg);
			db.setFruits_kg(fruits);
			db.setRice_kg(rice);
			db.setWheat_kg(wheat);
			db.setDairy_prod_kg(dairyprod);
			db.setCloth(cloths);
			db.setRecieved("no");
			
			sess.setAttribute("donatedet",db);
			
			SessionFactory sf=SessFactory.getSessFact();
			Session s=sf.openSession();
			Criteria crit = s.createCriteria(OrphnageSignup.class);
			crit.add(Restrictions.eq("state",state));
			ProjectionList proList1 = Projections.projectionList();
			ModelAndView model=new ModelAndView("orphanageprofile1");
			proList1.add(Projections.property("orphanname"));
			
			crit.setProjection(proList1);
			
			Iterable list = crit.list();
			
			ModelAndView  map=new ModelAndView("userorphanlist");
			map.addObject("orphn",list);
			return map;
		
		}
		
		

		@RequestMapping(value="/donate",method=RequestMethod.GET)
		public ModelAndView selState(HttpServletRequest req, @RequestParam("orname") String orname) {
		
			HttpSession sess=req.getSession(true);
			Donate db=(Donate)sess.getAttribute("donatedet");
			db.setOrphanage(orname);
			SessionFactory sf=SessFactory.getSessFact();
			Session s=sf.openSession();
			s.beginTransaction();
			s.save(db);
			s.getTransaction().commit();
			
			return new ModelAndView("donatesucccess","ornm",orname);
		}
}
