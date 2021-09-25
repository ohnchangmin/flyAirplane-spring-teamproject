package com.airplane.pension.service;

import javax.servlet.http.HttpSession;

import com.airplane.pension.dto.AdminDto;

public interface AdminService {
	public void loginCheck(AdminDto dto, HttpSession session) throws Exception;
}
