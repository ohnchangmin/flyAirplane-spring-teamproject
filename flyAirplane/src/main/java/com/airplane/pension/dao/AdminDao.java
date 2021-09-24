package com.airplane.pension.dao;

import com.airplane.pension.dto.AdminDto;

public interface AdminDao {
	
	public AdminDto loginCheck(String id) throws Exception;
}
