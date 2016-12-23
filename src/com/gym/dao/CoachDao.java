package com.gym.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.gym.entity.Coach;

public class CoachDao {
	Session session = null;
	public void add(Coach Coach) {
		// TODO Auto-generated method stub
		try{
		session = HibernateUtil.getSession();
		session.beginTransaction();
		session.save(Coach);
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
			String hql = "delete Coach where id = ?";			
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

	public void modify(Coach Coach) {
		// TODO Auto-generated method stub
		try{
			session = HibernateUtil.getSession();
			session.beginTransaction();
			session.update(Coach);
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

	@SuppressWarnings("finally")
	public List<Coach> find(int id) {
		// TODO Auto-generated method stub
		List<Coach> list = null;
		try{
			session = HibernateUtil.getSession();
			session.beginTransaction();
			String hql = "from Coach where id = ?";			
			Query query = session.createQuery(hql);
			query.setParameter(0, id);
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
