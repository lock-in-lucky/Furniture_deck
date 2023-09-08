package com.cc.pojo;

public class User {
	private Integer id;
	private String user_name;
	private String user_psw;
	public User() {
		super();
	}
	
	public User(String user_name, String user_psw) {
		super();
		this.user_name = user_name;
		this.user_psw = user_psw;
	}

	public User(Integer id, String user_name, String user_psw) {
		super();
		this.id = id;
		this.user_name = user_name;
		this.user_psw = user_psw;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_psw() {
		return user_psw;
	}
	public void setUser_psw(String user_psw) {
		this.user_psw = user_psw;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", user_name=" + user_name + ", user_psw=" + user_psw + "]";
	}
	
}
