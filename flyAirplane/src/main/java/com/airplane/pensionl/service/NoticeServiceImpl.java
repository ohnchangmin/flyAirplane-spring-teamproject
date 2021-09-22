package com.airplane.pensionl.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.airplane.pension.dao.NoticeDao;
import com.airplane.pension.dto.NoticeDto;

public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	NoticeDao dao;
	
	@Override
	public void write(NoticeDto dto) throws Exception {
		dao.write(dto);
	}

	@Override
	public List<NoticeDto> list() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
