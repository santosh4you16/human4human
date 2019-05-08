package com.h4h.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.UniqueConstraint;

@Entity
public class Users {

	@GeneratedValue
	private int userid;

	@Id
	@Column(unique=true)
	private String username;
	
	private String password;
	private String address;
	private String email;
	
	@Column(unique=true)
	private String phno;
	
	private String state;
	private String dob;
	private String caste;
	private String gender;
	
	@Column(nullable=false)
	private String name;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhno() {
		return phno;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getCaste() {
		return caste;
	}
	public void setCaste(String caste) {
		this.caste = caste;
	}
	@Override
	public String toString() {
		return "Users [userid=" + userid + ", username=" + username + ", password=" + password + ", address=" + address
				+ ", email=" + email + ", phno=" + phno + ", state=" + state + ", dob=" + dob + ", caste=" + caste
				+ ", gender=" + gender + ", name=" + name + "]";
	}
	
}
