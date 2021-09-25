package com.airplane.pension.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import com.airplane.pension.dao.AdminDao;
import com.airplane.pension.dto.AdminDto;

public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminDao dao;
	
	@Override
	public void loginCheck(AdminDto dto, HttpSession session) throws Exception {
		dto = dao.login(dto);
		if(dto != null) {
			session.setAttribute("userId", dto.getAdminName());
			session.setAttribute("adminName", session);
		}
		else {
			
		}
	}
}
