package com.airplane.pension.dao;

import com.airplane.pension.dto.AdminDto;

public interface AdminDao {
	
	public AdminDto login(AdminDto dto) throws Exception;
}
