package com.niit.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Supplier {
	
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	private String suppid;
	
	@Column
	private String suppname;
	
	@Column
	private String suppaddress;
	
	public String getSuppaddress() {
		return suppaddress;
	}

	public void setSuppaddress(String suppaddress) {
		this.suppaddress = suppaddress;
	}

	@Column
	private String suppphone;



	public String getSuppname() {
		return suppname;
	}

	public String getSuppid() {
		return suppid;
	}

	public void setSuppid(String suppid) {
		this.suppid = suppid;
	}

	public void setSuppname(String suppname) {
		this.suppname = suppname;
	}

	

	public String getSuppphone() {
		return suppphone;
	}

	public void setSuppphone(String suppphone) {
		this.suppphone = suppphone;
	}
	
	

}
