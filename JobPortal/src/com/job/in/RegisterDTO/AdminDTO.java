package com.job.in.RegisterDTO;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="adminregister")
public class AdminDTO {
	
	@Id
	@GenericGenerator(name="a1", strategy="increment")
	@GeneratedValue(generator="a1")
	
	private int aid;
	private String adminname;
	private String adminmail;
	private long adminmob;
	private String adminpass;
	public String getAdminpass() {
		return adminpass;
	}
	public void setAdminpass(String adminpass) {
		this.adminpass = adminpass;
	}
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAdminname() {
		return adminname;
	}
	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}
	public String getAdminmail() {
		return adminmail;
	}
	public void setAdminmail(String adminmail) {
		this.adminmail = adminmail;
	}
	public long getAdminmob() {
		return adminmob;
	}
	public void setAdminmob(long adminmob) {
		this.adminmob = adminmob;
	}
	
	

}
