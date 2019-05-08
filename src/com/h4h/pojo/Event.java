package com.h4h.pojo;

import java.sql.Time;
import java.time.LocalTime;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="event")
public class Event {
	
	@Id
	
	private int event_id;
	public int getEvent_id() {
		return event_id;
	}
	public void setEvent_id(int event_id) {
		this.event_id = event_id;
	}
	/*
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}*/
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getVenue() {
		return venue;
	}
	public void setVenue(String venue) {
		this.venue = venue;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Temporal(TemporalType.DATE)
	private Date date;
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	/*@Temporal(TemporalType.TIME)
	private LocalTime time;
	public java.time.temporal.Temporal getTime() {
		return time;
	}
	
    public void setTime(LocalTime time2) {
		this.time =time2;
	}*/
	private String time;
	private String venue;
	private String description;

}
