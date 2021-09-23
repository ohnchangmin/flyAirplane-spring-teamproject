package com.airplane.pension.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.airplane.pension.dao.NoticeDao;
import com.airplane.pension.dto.NoticeDto;

@Repository
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	NoticeDao dao;
	
	@Override
	public void write(NoticeDto dto) throws Exception {
		dao.write(dto);
	}

	@Override
	public List<NoticeDto> list() throws Exception {
		return dao.list();
	}

	@Override
	public NoticeDto read(int idx) throws Exception {
		return dao.read(idx);
	}
}
