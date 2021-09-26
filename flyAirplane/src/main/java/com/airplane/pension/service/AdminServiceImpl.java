package com.airplane.pension.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airplane.pension.dao.AdminDao;
import com.airplane.pension.dto.AdminDto;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminDao dao;
	
	@Override
	public boolean loginCheck(AdminDto dto, HttpSession session) throws Exception {
		dto = dao.login(dto);
		if(dto != null) {
			session.setAttribute("userId", dto.getAdminName());
			session.setAttribute("adminName", session);
			return true;
		}
		else {
			return false;
		}
	}
}
