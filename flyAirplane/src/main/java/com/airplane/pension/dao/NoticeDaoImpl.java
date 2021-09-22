package com.airplane.pension.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.airplane.pension.dto.NoticeDto;

@Repository
public class NoticeDaoImpl implements NoticeDao {

	@Autowired
	SqlSession sqlsession;
	
	@Override
	public void write(NoticeDto dto) throws Exception {
		sqlsession.insert("notice.insert", dto);
	}
		
	@Override
	public List<NoticeDto> read() throws Exception{
		return sqlsession.selectList("notice.select");
	}

}
