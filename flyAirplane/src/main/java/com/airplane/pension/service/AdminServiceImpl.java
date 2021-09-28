package com.airplane.pension.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airplane.pension.dao.AdminDao;
import com.airplane.pension.dto.AdminDto;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminDao dao;
	
	@Override
	public boolean loginCheck(AdminDto dto) throws Exception {
		dto = dao.login(dto);
		if(dto != null) {
			return true;
		}
		else {
			return false;
		}
	}
}
