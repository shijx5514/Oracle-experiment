package com.gym.entity;

import java.sql.Date;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table; 

@Entity
@Table(name = "Member")
public class Member {
	private int id;
	private String Name;
	private char Sex;
	private int age;
	private Date JoinDate;
	private Date expiredate;
	private String IC;
	private int height;
	private int weight;
	private double FatBate;
	private byte[] photo;
	private int couch_id;	
	private String M_Phone;
	
	
	@Id
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public void setSex(char sex){
		Sex = sex;
	}
	public void setSex(String sex) {
		if(sex.equals("男")){
			this.Sex = '男';
			
		}else if(sex.equals("女")){
			this.Sex = '女';
		}
	}
	@Column(name="Age", nullable=false, unique=false)
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	@Column(name="JoinDate", nullable=false, unique=false)
	public Date getJoinDate() {
		return JoinDate;
	}
	public void setJoinDate(Date joinDate) {
		JoinDate = joinDate;
	}
	@Column(name="expiredate", nullable=false, unique=false)
	public Date getExpiredate() {
		return expiredate;
	}
	public void setExpiredate(Date expiredate) {
		this.expiredate = expiredate;
	}
	@Column(name="ic", nullable=false, unique=true)
	public String getIC() {
		return IC;
	}
	public void setIC(String iC) {
		IC = iC;
	}
	@Column(name="height", nullable=false, unique=false)
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	@Column(name="weight", nullable=false, unique=false)
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	@Column(name="fatbate", nullable=false, unique=false)
	public double getFatBate() {
		return FatBate;
	}
	public void setFatBate(double fatBate) {
		FatBate = fatBate;
	}
	@Column(name="Photo", nullable=false, unique=false)
	public byte[] getPhoto() {
		return photo;
	}
	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}
	@Column(name="Coach_id", nullable=true, unique=false)
	public int getCouch_id() {
		return couch_id;
	}
	public void setCouch_id(int couch_id) {
		this.couch_id = couch_id;
	}
	@Column(name="M_Phone", nullable=true, unique=false)
	public String getM_Phone() {
		return M_Phone;
	}
	public void setM_Phone(String M_Phone) {
		this.M_Phone = M_Phone;
	}

	

	

}