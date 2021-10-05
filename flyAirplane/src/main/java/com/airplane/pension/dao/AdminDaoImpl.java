package com.airplane.pension.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.airplane.pension.dto.AdminDto;

@Repository
public class AdminDaoImpl implements AdminDao{

	@Autowired
	SqlSession sqlsession;
	
	@Override
	public AdminDto login(AdminDto dto) throws Exception {
		return sqlsession.selectOne("admin.adminLogin", dto);
	}
}
