package com.gym.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Perm_Role")
public class Perm_Role {
	private int id;
	private String Role_Name;
	private int perm_Id;
	@Id   
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column(name="Role_Name",nullable=false, unique=false)
	public String getRole_Name() {
		return Role_Name;
	}
	public void setRole_Name(String role_Name) {
		this.Role_Name = role_Name;
	}
	@Column(name="perm_id",nullable=false, unique=false)
	public int getperm_Id() {
		return perm_Id;
	}
	public void setperm_Id(int perm_Id) {
		this.perm_Id = perm_Id;
	}
	
	
}
