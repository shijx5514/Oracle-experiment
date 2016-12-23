package com.gym.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;

import com.gym.entity.Record;

public class RecordDao {
	Session session = null;
	public void add(Record Record) {
		// TODO Auto-generated method stub
		try{
		session = HibernateUtil.getSession();
		session.beginTransaction();
		session.save(Record);
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
			String hql = "delete Record where Member_id = ?";			
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

	public void modify(Record Record) {
		// TODO Auto-generated method stub
		try{
			session = HibernateUtil.getSession();
			session.beginTransaction();
			session.update(Record);
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

	public List<Record> findByMId(String id) {
		// TODO Auto-generated method stub
		List<Record> list = null;
		try{
			session = HibernateUtil.getSession();
			session.beginTransaction();
			String sql = "SELECT Record.id, Record.Member_id,Record.record_time,member.name FROM Record inner join member on (Record.MEMBER_ID = member.id) where Record.MEMBER_ID = ? order by Record.Record_Time";			
			SQLQuery query=session.createSQLQuery(sql);
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
	
	
	public List<Record> findAll() {
		// TODO Auto-generated method stub
		List<Record> list = null;
		try{
			session = HibernateUtil.getSession();
			session.beginTransaction();
			String sql = "SELECT Record.id, Record.Member_id,Record.record_time,member.name FROM Record inner join member on (Record.MEMBER_ID = member.id) order by Record.Record_Time";			
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
