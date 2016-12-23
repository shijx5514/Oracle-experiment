package com.gym.dao;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.GregorianCalendar;

import org.hibernate.Hibernate;

import com.gym.entity.Front;

public class testadd {
	public static void main(String[] args) throws IOException {
		FrontDao b = new FrontDao();
	Front Front = new Front();
	Front.setId(1);
	Front.setName("Ê¯¼ÒöÎ");
	Front.setUserName("shijx");
	Front.setPassWord("123456");

	InputStream in;
	try {
		in = new FileInputStream( "C:/Users/Administrator/Desktop/test.png");
		byte[] photo = new byte[in.available()];
		in.read(photo);
		in.close();
		Front.setPhoto(photo);
	} catch (FileNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
	java.sql.Date dt = 
			new java.sql.Date(new GregorianCalendar(1980,0,1).getTimeInMillis());
	Front.setJoinDate(dt);
	b.add(Front);
	}
	
}
