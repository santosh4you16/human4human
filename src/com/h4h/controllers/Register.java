package com.h4h.controllers;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.h4h.pojo.Users;
import com.h4h.sessionfactory.SessFactory;

@Controller
public class Register {
	
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public ModelAndView userRegister(@RequestParam("firstname")String fname,@RequestParam("middlename")String mname,
						@RequestParam("lastname")String lname,@RequestParam("dob")String dob,
						@RequestParam("phno")String phno,@RequestParam("gender")String gender,
						@RequestParam("caste")String caste,@RequestParam("email")String email,
						@RequestParam("add")String add,@RequestParam("houseno")String hsn,
						@RequestParam("state")String state,@RequestParam("city")String city,
						@RequestParam("pincode")String pc,@RequestParam("uname")String uname,
						@RequestParam("pass")String pass)
	{
		
		String finalName=fname+" "+mname+" "+lname;
		String finalAdd=add+" "+hsn+" "+city+" "+pc;
		
		Users u=new Users();
		u.setName(finalName);
		u.setDob(dob);
		u.setPhno(phno);
		u.setGender(gender);
		u.setCaste(caste);
		u.setEmail(email);
		u.setAddress(finalAdd);
		u.setName(finalName);
		u.setPassword(pass);
		u.setUsername(uname);
		u.setState(state);
		
		SessionFactory sf=SessFactory.getSessFact();
		Session s=sf.openSession();
		s.beginTransaction();
		s.save(u);
		s.getTransaction().commit();
		
		return new ModelAndView("regsuccess");
		
	}
	

}
