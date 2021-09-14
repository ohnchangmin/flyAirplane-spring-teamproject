package com.airplane.pension.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.airplane.pension.dto.NoticeDto;

@Repository
public class NoticeDao {
	
	@Autowired
	SqlSession sqlsession;
	
	public List<NoticeDto> selectList(){
		List<NoticeDto> list = sqlsession.selectList("notice.select");
		return list;
	}
}
