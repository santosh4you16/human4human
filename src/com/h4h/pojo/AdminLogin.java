package com.h4h.pojo;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="admin")
public class AdminLogin {
	
	@Id
	private String username;
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
	private String password;
	@Override
	public String toString() {
		return "Admin [username=" + username + ", password=" + password + "]";
	}
	
}

