package com.gym.entity;


import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
    
@Entity
@Table(name = "Couch")
public class Coach {
	private int id;
	private String UserName;
	private String PassWord;
	private Date JoinDate;
	private String Name;
	private int age;
	private char Sex;
	private String IC;
	private String School;
	private int height;
	private int weight;
	private double FatBate;
	private byte[] photo;
	
	@Column(name = "photo" , nullable=false, unique=false)
	public byte[] getPhoto() {
		return photo;
	}
	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}
	@Id
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column(name="UserName", length=16, nullable=false, unique=false)
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	@Column(name="PassWord", length=16, nullable=false, unique=false)
	public String getPassWord() {
		return PassWord;
	}
	public void setPassWord(String passWord) {
		PassWord = passWord;
	}
	@Column(name="JoinDate", nullable=false, unique=false)
	public Date getJoinDate() {
		return JoinDate;
	}
	public void setJoinDate(Date joinDate) {
		JoinDate = joinDate;
	}
	@Column(name="Name", nullable=false, unique=false)
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	@Column(name="Sex", nullable=false, unique=false)
	public char getSex() {
		return Sex;
	}
	public void setSex(char sex) {
		Sex = sex;
	}
	@Column(name="IC", nullable=false, unique=true)
	public String getIC() {
		return IC;
	}
	public void setIC(String iC) {
		IC = iC;
	}
	@Column(name="School", nullable=false, unique=false)
	public String getSchool() {
		return School;
	}
	public void setSchool(String school) {
		School = school;
	}
	@Column(name="Height", nullable=false, unique=false)
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	@Column(name="Weight", nullable=false, unique=false)
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	@Column(name="FatBate", nullable=false, unique=false)
	public double getFatBate() {
		return FatBate;
	}
	public void setFatBate(double fatBate) {
		FatBate = fatBate;
	}
	@Column(name="Age", nullable=false, unique=false)
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	
	
}

