package com.gym.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.gym.entity.Perm_Role;

public class Perm_RoleDao {
	Session session = null;
	public void add(Perm_Role Perm_Role) {
		// TODO Auto-generated method stub
		try{
		session = HibernateUtil.getSession();
		session.beginTransaction();
		session.save(Perm_Role);
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
			String hql = "delete Perm_Role where id = ?";			
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

	public void modify(Perm_Role Perm_Role) {
		// TODO Auto-generated method stub
		try{
			session = HibernateUtil.getSession();
			session.beginTransaction();
			session.update(Perm_Role);
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

	public List<Perm_Role> find(int id) {
		// TODO Auto-generated method stub
		List<Perm_Role> list = null;
		try{
			session = HibernateUtil.getSession();
			session.beginTransaction();
			String hql = "from Perm_Role where id = ?";			
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
