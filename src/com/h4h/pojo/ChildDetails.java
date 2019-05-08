package com.h4h.pojo;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="child")


public class ChildDetails {
	
	@Id
	private int child_id;
	public int getChild_id() {
		return child_id;
	}
	public void setChild_id(int child_id) {
		this.child_id = child_id;
	}
	private String orphanname;
	private String child_name;
	private int age;
	private String gender;
	private byte[] cpic;
	public String getOrphanname() {
		return orphanname;
	}
	public void setOrphanname(String orphanname) {
		this.orphanname = orphanname;
	}
	public String getChild_name() {
		return child_name;
	}
	public void setChild_name(String child_name) {
		this.child_name = child_name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public byte[] getCpic() {
		return cpic;
	}
	public void setCpic(byte[] cpic) {
		this.cpic = cpic;
	}
	

}
