package com.gym.entity;

import java.sql.Date;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Record")
public class Record {
	private int id;
	private int Member_id;
	private Date Record_Time;
	
	@Id   
	@GeneratedValue(strategy = GenerationType.SEQUENCE) 
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column(name="Member_id", nullable=false, unique=false)
	public int getMember_id() {
		return Member_id;
	}
	public void setMember_id(int member_id) {
		Member_id = member_id;
	}
	@Column(name="Record_Time", nullable=false, unique=false)
	public Date getRecord_Time() {
		return Record_Time;
	}
	public void setRecord_Time(Date record_Time) {
		Record_Time = record_Time;
	}
	
	
}
