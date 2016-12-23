package com.gym.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "RateList")
public class RateList {
	private int id;
	private String Message ;
	private double Money;
	@Id   
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column(name="Message",nullable=false, unique=false)
	public String getMessage() {
		return Message;
	}
	public void setMessage(String message) {
		Message = message;
	}
	@Column(name="Money",nullable=false, unique=false)
	public double getMoney() {
		return Money;
	}
	public void setMoney(double money) {
		Money = money;
	}
	
	
}
