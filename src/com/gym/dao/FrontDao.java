package com.gym.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.gym.entity.Front;

public class FrontDao {
	Session session = null;
	public void add(Front Front) {
		// TODO Auto-generated method stub
		try{
		session = HibernateUtil.getSession();
		session.beginTransaction();
		session.save(Front);
		session.getTransaction().commit();
		
		}
		catch(Exception e){
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		finally{
			HibernateUtil.closeSession();
		}
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		try{
			session = HibernateUtil.getSession();
			session.beginTransaction();
			String hql = "delete Front where id = ?";			
			Query query = session.createQuery(hql);
			query.setParameter(0, id);		
			query.executeUpdate();
			session.getTransaction().commit();
			
			}
			catch(Exception e){
				e.printStackTrace();
				session.getTransaction().rollback();
			}
			finally{
				HibernateUtil.closeSession();
			}
	}

	public void modify(Front Front) {
		// TODO Auto-generated method stub
		try{
			session = HibernateUtil.getSession();
			session.beginTransaction();
			session.update(Front);
			session.getTransaction().commit();
			}
			catch(Exception e){
				e.printStackTrace();
				session.getTransaction().rollback();
			}
			finally{
				HibernateUtil.closeSession();
			}
	}

	public List<Front> findById(String id) {
		// TODO Auto-generated method stub
		List<Front> list = null;
		try{
			session = HibernateUtil.getSession();
			session.beginTransaction();
			String hql = "from Front where id = ?";			
			Query query = session.createQuery(hql);
			query.setParameter(0, Integer.parseInt(id));
			list = query.list();
			session.getTransaction().commit();
			System.out.println("*");
			}
			catch(Exception e){
				e.printStackTrace();
				session.getTransaction().rollback();
			}
			finally{
				HibernateUtil.closeSession();
				return list;
			}
		
	}
	
	public List<Front> findByUName(String username) {
		// TODO Auto-generated method stub
		List<Front> list = null;
		try{
			session = HibernateUtil.getSession();
			session.beginTransaction();
			String hql = "from Front where username = ?";			
			Query query = session.createQuery(hql);
			query.setParameter(0, username);
			list = query.list();
			session.getTransaction().commit();
			System.out.println("*");
			}
			catch(Exception e){
				e.printStackTrace();
				session.getTransaction().rollback();
			}
			finally{
				HibernateUtil.closeSession();
				return list;
			}
		
	}


}
