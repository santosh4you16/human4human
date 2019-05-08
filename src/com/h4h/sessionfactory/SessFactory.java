package com.h4h.sessionfactory;


import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class SessFactory {
	
	@SuppressWarnings("unused")
	private static SessionFactory sessionFactory;
	
	public static SessionFactory getSessFact() {
		
		sessionFactory = new Configuration().configure().buildSessionFactory();
		return sessionFactory;
	}

}
