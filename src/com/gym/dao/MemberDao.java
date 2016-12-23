package com.gym.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.gym.entity.Member;

public class MemberDao {
	Session session = null;
	public void add(Member Member) {
		// TODO Auto-generated method stub
		try{
		session = HibernateUtil.getSession();
		session.beginTransaction();
		session.save(Member);
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
			String hql = "delete Member where id = ?";			
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

	public void modify(Member Member) {
		// TODO Auto-generated method stub
		try{
			session = HibernateUtil.getSession();
			session.beginTransaction();
			session.update(Member);
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

	public List<Member> findById(String id) {
		// TODO Auto-generated method stub
		List<Member> list = null;
		try{
			session = HibernateUtil.getSession();
			session.beginTransaction();
			String hql = "from Member where id = ?";			
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
	
	public List<Member> findByIc(String ic) {
		// TODO Auto-generated method stub
		List<Member> list = null;
		try{
			session = HibernateUtil.getSession();
			session.beginTransaction();
			String hql = "from Member where ic = ?";			
			Query query = session.createQuery(hql);
			query.setParameter(0, ic);
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
	
	public List<Member> findAll() {
		// TODO Auto-generated method stub
		List<Member> list = null;
		try{
			session = HibernateUtil.getSession();
			session.beginTransaction();
			String hql = "from Member";			
			Query query = session.createQuery(hql);
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
