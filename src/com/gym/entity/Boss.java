package com.gym.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "Boss")
public class Boss {
	private int id;
	private String UserName;
	private String PassWord;
	private Date JoinDate;
	private byte[] photo;
	public static Boss newInstance(){
		return new Boss();
	}

	@Column(name="UserName", length=32, nullable=false, unique=false)
	public String getUserName() {
		return UserName;
	}

	public void setUserName(String name) {
		this.UserName = name;
	}
	
	@Column(name="password", length=20, nullable=false, unique=false)
	public String getPassWord() {
		return PassWord;
	}

	public void setPassWord(String PassWord) {
		this.PassWord = PassWord;
	}
	@Column(name="JoinDate", nullable=false , unique=false)
	public Date getJoinDate() {
		return JoinDate;
	}

	public void setJoinDate(Date JoinDate) {
		this.JoinDate = JoinDate;
	}
	@Id
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	@Column(name="Photo", nullable=true , unique=false)
	public byte[] getPhoto() {
		return photo;
	}

	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}
	
	
}
