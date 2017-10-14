package com.niit.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Category {
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	public String catid;
	
	@Column
	public String catname;
	
	@Column
	public String catprice;

	public String getCatprice() {
		return catprice;
	}

	public void setCatprice(String catprice) {
		this.catprice = catprice;
	}

	

	public String getCatid() {
		return catid;
	}

	public void setCatid(String catid) {
		this.catid = catid;
	}

	public String getCatname() {
		return catname;
	}

	public void setCatname(String catname) {
		this.catname = catname;
	}

	
	
	

}
