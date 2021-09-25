package com.airplane.pension.dto;

public class AdminDto {
	private String id;
	private String password;
	private String adminName;
	
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

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	@Override
	public String toString() {
		return "AdminDto [id=" + id + ", password=" + password + ", adminName=" + adminName + "]";
	}
}
