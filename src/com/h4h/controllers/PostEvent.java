package com.h4h.controllers;

import java.time.LocalTime;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.h4h.pojo.Event;

import com.h4h.sessionfactory.SessFactory;

@Controller
public class PostEvent {
	
	@RequestMapping("/postEvent")
	public String postEvent() {
		return "postEvent";
	}
	
	@RequestMapping(value="/postevent",method=RequestMethod.GET)
	public ModelAndView post(@RequestParam("date")Date date,@RequestParam("time")String time
							,@RequestParam("venue")String venue,@RequestParam("description")String description)
							{
		Event e =new Event();
		
			e.setEvent_id(1);
			e.setDate(date);
			e.setTime(time);
			e.setVenue(venue);
			e.setDescription(description);
			SessionFactory sf=SessFactory.getSessFact();
			Session s=sf.openSession();
			s.beginTransaction();
			s.update(e);
			s.getTransaction().commit();
			
		
		
		return new ModelAndView("AdminHomePage1");
							}

}
