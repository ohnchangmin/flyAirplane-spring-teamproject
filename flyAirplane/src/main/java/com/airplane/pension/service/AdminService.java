package com.airplane.pension.service;

import javax.servlet.http.HttpSession;

import com.airplane.pension.dto.AdminDto;

public interface AdminService {
	public boolean loginCheck(AdminDto dto, HttpSession session) throws Exception;
}
