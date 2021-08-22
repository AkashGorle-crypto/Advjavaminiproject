package com.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Baby {
	 @Id @GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String babyName;
	private String meaning;
	private String sex;
	private String religion;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBabyName() {
		return babyName;
	}
	public void setBabyName(String babyName) {
		this.babyName = babyName;
	}
	public String getMeaning() {
		return meaning;
	}
	public void setMeaning(String meaning) {
		this.meaning = meaning;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getReligion() {
		return religion;
	}
	public void setReligion(String religion) {
		this.religion = religion;
	}
	public Baby(String babyName, String meaning, String sex, String religion) {
		super();
		this.babyName = babyName;
		this.meaning = meaning;
		this.sex = sex;
		this.religion = religion;
	}
	public Baby() {
		super();
		
	}
	
	

}
