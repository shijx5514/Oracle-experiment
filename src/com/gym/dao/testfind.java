package com.gym.dao;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

import com.gym.entity.Pay;
import com.gym.entity.SqlToUnitDate;


public class testfind {
	public static void main(String[] args) throws IOException {
		PayDao b = new PayDao();
		
		List l = b.findAll();
		Object []o = (Object[]) l.get(0);
		System.out.println(o[4].toString());
			System.out.println(SqlToUnitDate.stud(o[4].toString()));
	}
}
