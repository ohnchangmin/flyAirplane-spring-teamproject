package com.airplane.pension.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.airplane.pension.dto.Criteria;
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
	public List<NoticeDto> list() throws Exception{
		return sqlsession.selectList("notice.select");
	}

	@Override
	public NoticeDto read(int idx) throws Exception {
		return sqlsession.selectOne("notice.selectOne", idx);
	}

	@Override
	public void update(NoticeDto dto) throws Exception {
		sqlsession.update("notice.update", dto);
	}

	@Override
	public void delete(int idx) throws Exception {
		sqlsession.delete("notice.delete", idx);
		
	}

	@Override
	public List<NoticeDto> list(Criteria cri) throws Exception {
		return sqlsession.selectList("notice.listCriteria", cri);
	}

	//게시물 개수
	@Override
	public int listCount() throws Exception {
		return sqlsession.selectOne("notice.listCount");
	}
}
