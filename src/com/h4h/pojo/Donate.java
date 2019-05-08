package com.h4h.pojo;


import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="donate")
public class Donate {

	
	@Id
	private String username;
	
	private int cloth;
	
	
	private String orphanage;
	private int money;
	private String recieved;
	private int vegetable_kg;
	private int fruits_kg;
	private int rice_kg;
	private int wheat_kg;
	private int dairy_prod_kg;
	private String date;
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getCloth() {
		return cloth;
	}
	public void setCloth(int cloth) {
		this.cloth = cloth;
	}
	public String getOrphanage() {
		return orphanage;
	}
	public void setOrphanage(String orphanage) {
		this.orphanage = orphanage;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	public String getRecieved() {
		return recieved;
	}
	public void setRecieved(String recieved) {
		this.recieved = recieved;
	}
	public int getVegetable_kg() {
		return vegetable_kg;
	}
	public void setVegetable_kg(int vegetable_kg) {
		this.vegetable_kg = vegetable_kg;
	}
	public int getFruits_kg() {
		return fruits_kg;
	}
	public void setFruits_kg(int fruits_kg) {
		this.fruits_kg = fruits_kg;
	}
	public int getRice_kg() {
		return rice_kg;
	}
	public void setRice_kg(int rice_kg) {
		this.rice_kg = rice_kg;
	}
	public int getWheat_kg() {
		return wheat_kg;
	}
	public void setWheat_kg(int wheat_kg) {
		this.wheat_kg = wheat_kg;
	}
	public int getDairy_prod_kg() {
		return dairy_prod_kg;
	}
	public void setDairy_prod_kg(int dairy_prod_kg) {
		this.dairy_prod_kg = dairy_prod_kg;
	}
		
	@Override
	public String toString() {
		return "Donate [username=" + username + ", cloth=" + cloth + ", orphanage=" + orphanage + ", money=" + money
				+ ", recieved=" + recieved + ", vegetable_kg=" + vegetable_kg + ", fruits_kg=" + fruits_kg
				+ ", rice_kg=" + rice_kg + ", wheat_kg=" + wheat_kg + ", dairy_prod_kg=" + dairy_prod_kg + ", date="
				+ date + "]";
	}
	
	
	
}
