package com.gym.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.gym.entity.RateList;

public class RateListDao {
	Session session = null;
	public void add(RateList RateList) {
		// TODO Auto-generated method stub
		try{
		session = HibernateUtil.getSession();
		session.beginTransaction();
		session.save(RateList);
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
			String hql = "delete RateList where id = ?";			
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

	public void modify(RateList RateList) {
		// TODO Auto-generated method stub
		try{
			session = HibernateUtil.getSession();
			session.beginTransaction();
			session.update(RateList);
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

	public List<RateList> find(int id) {
		// TODO Auto-generated method stub
		List<RateList> list = null;
		try{
			session = HibernateUtil.getSession();
			session.beginTransaction();
			String hql = "from RateList where id = ?";			
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
