package com.h4h.pojo;

import javax.persistence.*;

@Entity
@Table(name="orphanage")

public class OrphnageSignup {
	
		
		@Id
	private String orphanname;
	public String getOrphanname() {
		return orphanname;
	}
	public void setOrphanname(String orphanname) {
		this.orphanname = orphanname;
	}
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhno() {
		return phno;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public byte[] getPpic() {
		return ppic;
	}
	public void setPpic(byte[] ppic) {
		this.ppic = ppic;
	}



	private String email;
	private String state;
	private String address;
	private String phno;
	private String login_name;
	public String getLogin_name() {
		return login_name;
	}
	public void setLogin_name(String login_name) {
		this.login_name = login_name;
	}
	public byte[] getCertificate() {
		return certificate;
	}
	public void setCertificate(byte[] certificate) {
		this.certificate = certificate;
	}



	private String password;
	private byte[] ppic;
	private byte[] certificate;

	@Override
	public String toString()
	{

		return "OrphnageSignup[Orphanname="+orphanname+",Password="+password+"]";
	}
	

}
