package com.h4h.pojo;
import java.util.Date;

import javax.persistence.*;

//import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="orequest")
public class Orequest {
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name ="requestid")
	private int requestid;
	@Temporal(TemporalType.DATE)
	private Date dateofrequest;
	public Date getDateofrequest() {
		return dateofrequest;
	}
	public void setDateofrequest(Date dateofrequest) {
		this.dateofrequest = dateofrequest;
	}
	public int getRequestid() {
		return requestid;
	}
	public void setRequestid(int requestid) {
		this.requestid = requestid;
	}

	private String orphanname;
	
	private String request;
	public String getRequest() {
		return request;
	}
	public void setRequest(String request) {
		this.request = request;
	}
	public String getOrphanname() {
		return orphanname;
	}
	public void setOrphanname(String orphanname) {
		this.orphanname = orphanname;
	}
	
	@Override
	public String toString() {
		return "Orequest [orphanname=" + orphanname + ", request=" + request + "]";
	}
}

