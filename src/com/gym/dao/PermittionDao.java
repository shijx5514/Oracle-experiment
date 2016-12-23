package com.gym.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.gym.entity.Permittion;

public class PermittionDao {
	Session session = null;
	public void add(Permittion Permittion) {
		// TODO Auto-generated method stub
		try{
		session = HibernateUtil.getSession();
		session.beginTransaction();
		session.save(Permittion);
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
			String hql = "delete Permittion where id = ?";			
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

	public void modify(Permittion Permittion) {
		// TODO Auto-generated method stub
		try{
			session = HibernateUtil.getSession();
			session.beginTransaction();
			session.update(Permittion);
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

	public List<Permittion> find(int id) {
		// TODO Auto-generated method stub
		List<Permittion> list = null;
		try{
			session = HibernateUtil.getSession();
			session.beginTransaction();
			String hql = "from Permittion where id = ?";			
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
