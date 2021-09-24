package com.airplane.pension.dto;

public class AdminDto {
	private String id;
	private String password;
	private String username;
	private String nickname;
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getNickname() {
		return nickname;
	}
	
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	@Override
	public String toString() {
		return "AdminDto [id=" + id + ", password=" + password + ", username=" + username + ", nickname=" + nickname
				+ "]";
	}
}
