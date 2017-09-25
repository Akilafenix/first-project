package com.niit.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;

@Component
@Entity	


public class User {
	
	@Column
	@NotEmpty(message="Enter the FirstName")
	private String firstname;
	
	@Column
	@NotEmpty(message="Enter the LastName")
	private String lastname;
	
	@Column
	@NotEmpty(message="Enter the Phone No")
	@Pattern(regexp="[\\d]{10}",message="please enter correct digits")
	@Size(min=8,max=10,message="enter correct phone")
	private String phone;
	
	@Column
	@NotEmpty(message="Enter the Address")
	private String address;
	
	@Column
	@Email(message="enter the valid email")
	@NotEmpty(message="Enter the Email")
	private String email;
	
	@Id
	@NotEmpty(message="Enter the UserName")
	private String username;
	
	@Column
	@NotEmpty(message="Enter the Password")
	private String password;

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
