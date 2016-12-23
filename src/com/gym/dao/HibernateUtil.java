package com.gym.dao;

import org.hibernate.HibernateException;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	 private static final SessionFactory sessionFactory;  
	    //ʹ��ThreadLocal����Session  
	    private static final ThreadLocal<Session> threadLocal = new ThreadLocal<Session>();  
	    static {  
	        try {  
	            //����hibernate.cfg.xml����SessionFactory 
	        	Configuration config = new AnnotationConfiguration().configure();
	            sessionFactory = config.buildSessionFactory();  
	        } catch (Throwable ex) {  
	            ex.printStackTrace();  
	            System.err.println("����SessionFactory����" + ex);  
	            throw new ExceptionInInitializerError(ex);  
	        }  
	    }     
	    public static SessionFactory getSessionFactory() {  
	        return sessionFactory;  
	    }     
	    public static Session getSession() throws HibernateException {  
	        Session session = (Session) threadLocal.get();  
	        if (session == null || !session.isOpen()) {  
	            session = (sessionFactory != null) ? sessionFactory.openSession(): null;  
	            threadLocal.set(session);  
	        }  
	        return session;  
	    }      
	    public static void closeSession() throws HibernateException {  
	        Session session = (Session) threadLocal.get();  
	        threadLocal.set(null);  
	  
	        if (session != null) {  
	            session.close();  
	        }  
	    }  

	}
