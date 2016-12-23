package com.gym.dao;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.GregorianCalendar;

import com.gym.entity.Coach;

public class testmodify {
	public static void main(String[] args) throws IOException {
	CoachDao b = new CoachDao();
	Coach Coach = new Coach();
	Coach.setId(1);
	Coach.setIC("210106199603150934");
//	Coach.setSex('��');
	Coach.setName("ʯ����");
	Coach.setAge(21);
	Coach.setUserName("shijx");
	Coach.setPassWord("123456");
	Coach.setHeight(187);
	Coach.setWeight(100);
	Coach.setFatBate(0.27);
	Coach.setSchool("JiLin University");
	InputStream in;
	try {
		in = new FileInputStream( "C:/Users/Administrator/Desktop/test.png");
		byte[] photo = new byte[in.available()];
		in.read(photo);
		in.close();
		Coach.setPhoto(photo);
	} catch (FileNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	java.sql.Date dt = 
			new java.sql.Date(new GregorianCalendar(1980,0,1).getTimeInMillis());
	Coach.setJoinDate(dt);
	b.modify(Coach);
	}
}
