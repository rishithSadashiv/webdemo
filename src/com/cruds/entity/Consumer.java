package com.cruds.entity;

public class Consumer {
	
	private String username;
	private String password;
	private String name;
	private String phNo;
	private String email;
	public Consumer(String username, String password, String name, String phNo, String email) {
		super();
		this.username = username;
		this.password = password;
		this.name = name;
		this.phNo = phNo;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhNo() {
		return phNo;
	}
	public void setPhNo(String phNo) {
		this.phNo = phNo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "Consumer [username=" + username + ", password=" + password + ", name=" + name + ", phNo=" + phNo
				+ ", email=" + email + "]";
	}
	
	

}
