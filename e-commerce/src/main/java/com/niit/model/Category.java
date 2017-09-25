package com.niit.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Category {
	
	@Id
	public String catid;
	
	@Column
	public String catname;
	
	@Column
	public String catdescription;
	
	

}
