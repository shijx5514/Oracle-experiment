package com.gym.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;

import com.gym.entity.Pay;

public class PayDao {
	Session session = null;
	public void add(Pay Pay) {
		// TODO Auto-generated method stub
		try{
		session = HibernateUtil.getSession();
		session.beginTransaction();
		session.save(Pay);
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
			String hql = "delete Pay where Member_id = ?";			
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

	public void modify(Pay Pay) {
		// TODO Auto-generated method stub
		try{
			session = HibernateUtil.getSession();
			session.beginTransaction();
			session.update(Pay);
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

	public List<Pay> findByMId(String m_id) {
		// TODO Auto-generated method stub
		List<Pay> list = null;
		try{
			session = HibernateUtil.getSession();
			session.beginTransaction();
			String sql = "SELECT Pay.ID,Pay.MEMBER_ID,Pay.MESSAGE, Pay.MONEY,Pay.TIME,Pay.NUM,Member.name FROM Pay inner join Member on Pay.MEMBER_ID = Member.id where Pay.Member_ID = ?";			
			SQLQuery query=session.createSQLQuery(sql);
			query.setParameter(0, Integer.parseInt(m_id));
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
	
	
	public List<Pay> findAll() {
		// TODO Auto-generated method stub
		List<Pay> list = null;
		try{
			session = HibernateUtil.getSession();
			session.beginTransaction();
			String sql = "SELECT Pay.ID,Pay.MEMBER_ID,Pay.MESSAGE, Pay.MONEY,Pay.TIME,Pay.NUM,Member.name FROM Pay inner join Member on Pay.MEMBER_ID = Member.id";			
			SQLQuery query=session.createSQLQuery(sql);
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
