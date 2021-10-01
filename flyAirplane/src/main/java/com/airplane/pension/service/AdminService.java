package com.airplane.pension.service;

import com.airplane.pension.dto.AdminDto;

public interface AdminService {
	public boolean loginCheck(AdminDto dto) throws Exception;
	
	public AdminDto login(AdminDto dto) throws Exception;
}
