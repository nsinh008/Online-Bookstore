package com.org.book.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Entity;

@Entity
public class PurchaseOrder implements Serializable{

	private static final long serialVersionUID = -1306848464726481979L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
	private int id;
	private String status;
	private int address;
	private int customerid;
	private double amount;
	private Address addr;
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public int getAddress() {
		return address;
	}
	public void setAddress(int address) {
		this.address = address;
	}
	public int getCustomerid() {
		return customerid;
	}
	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount2) {
		this.amount = amount2;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public Address getAddr() {
		return addr;
	}
	public void setAddr(Address addr) {
		this.addr = addr;
	}
	@Override
	public String toString() {
		return "PurchaseOrder [id=" + id + ", status=" + status + ", address=" + address + ", customerid=" + customerid
				+ ", amount=" + amount + "]";
	}

	
	
}
