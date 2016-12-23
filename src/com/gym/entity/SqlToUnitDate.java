package com.gym.entity;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class SqlToUnitDate {
	public static String stud(java.sql.Date d){
		SimpleDateFormat sdf = new SimpleDateFormat("MM-dd-yyyy");		//设置日期格式
		return sdf.format(d);
	}
	
	public static String stud(String s){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");		//设置日期格式
		SimpleDateFormat sdf1 = new SimpleDateFormat("MM-dd-yyyy");		//设置日期格式
		
			java.util.Date d = null;
			try {
				d = sdf.parse(s);
				System.out.println(d);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return sdf1.format(d);
	}
	
//	public static void main(String[] args) {
//		System.out.println(SqlToUnitDate.stud(new java.sql.Date(11112233)));
//	}
}
