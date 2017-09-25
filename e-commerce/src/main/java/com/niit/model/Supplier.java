package com.niit.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Supplier {
	
	@Id
	private String suppid;
	
	@Column
	private String suppname;
	
	@Column
	private String suppaddrees;
	
	@Column
	private String suppphone;

	public String getSuppid() {
		return suppid;
	}

	public void setSuppid(String suppid) {
		this.suppid = suppid;
	}

	public String getSuppname() {
		return suppname;
	}

	public void setSuppname(String suppname) {
		this.suppname = suppname;
	}

	public String getSuppaddrees() {
		return suppaddrees;
	}

	public void setSuppaddrees(String suppaddrees) {
		this.suppaddrees = suppaddrees;
	}

	public String getSuppphone() {
		return suppphone;
	}

	public void setSuppphone(String suppphone) {
		this.suppphone = suppphone;
	}
	
	

}
