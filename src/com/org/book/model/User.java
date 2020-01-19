package com.org.book.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class User {

	private static final long serialVersionUID = -4456203607463754535L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "customerid", unique = true, nullable = false)
    private int customerid;
    private String fname;
	private String lname;
	private String pwd;
    private String email;
    
    public int getCustomerid() {
		return customerid;
	}
	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	 @Override
		public String toString() {
			return "User [customerid=" + customerid + ", fname=" + fname + ", lname=" + lname + ", pwd=" + pwd
					+ ", email=" + email + "]";
		}
    
    
    


 
}