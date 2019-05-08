package com.h4h.controllers;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.h4h.pojo.OrphnageSignup;
import com.h4h.pojo.Users;
import com.h4h.sessionfactory.SessFactory;

@SessionAttributes(value= {"user","orpname"})
@Controller
public class Login {
	@RequestMapping(value="/userlog",method=RequestMethod.POST)
	public ModelAndView userLogin(@RequestParam("uname")String uname,@RequestParam("pwd")String pwd) {
	
	SessionFactory sf=SessFactory.getSessFact();
	Session s=sf.openSession();
	
	Users data=s.get(Users.class,uname);
	if(data==null) {
		return new ModelAndView("userlogin"); 
	}
	
	String name=data.getUsername().trim();
	String pd=data.getPassword().trim();
	String nm=data.getName().trim();
	
//	SQLQuery query=s.createSQLQuery("select username,password from users where username=:u and password=:p");
//	query.setString("u",uname);
//	query.setString("p",pwd);
//	query.addEntity(Users.class);
//	Users data=(Users)query.uniqueResult();
//	String name=data.getUsername();
//	String pd=data.getPassword();
	
	
		if(uname.equals(name)&&pwd.equals(pd)) {
			return new ModelAndView("userprofile","user",nm);
		}else {
			return new ModelAndView("userlogin");
		}
	
	
	}
	
	@RequestMapping("/orphanlogin")
	public String orphangeLogin() {
		return "orphangeLogin";
	}
	
	@RequestMapping("/orphanprofile")
	public String orphanageprofile1() {
		return "orphanageprofile1";
	}
	

	@RequestMapping("/osubmit")
	public ModelAndView submitform(@RequestParam("orphanname")String oname,@RequestParam("pass")String password,HttpSession session)
	{
		SessionFactory sf=SessFactory.getSessFact();
		Session s=sf.openSession();
		
		OrphnageSignup data=s.get(OrphnageSignup.class,oname);
		if(data==null) {
			return new ModelAndView("orphanlogin"); 
		}
		
		String Oname=data.getOrphanname().trim();
		String pass=data.getPassword().trim();
		String pd=data.getPassword().trim();
		session.setAttribute("login_name",Oname);
		//String nm=data.getName().trim();
		if(oname.equals(Oname)&&password.equals(pass)) {
			return new ModelAndView("orphanslider","orpname",Oname );
		}else {
			return new ModelAndView("orphanageLogin");
		}
		
		
}

}
