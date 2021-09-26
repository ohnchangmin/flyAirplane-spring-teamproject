package com.airplane.pension.service;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airplane.pension.dao.NoticeDao;
import com.airplane.pension.dto.NoticeDto;

@Service
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	NoticeDao dao;
	
	@Override
	public void write(NoticeDto dto) throws Exception {
		long date = System.currentTimeMillis();
		String curDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
		dto.setWdate(curDate);
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

	@Override
	public void update(NoticeDto dto) throws Exception {
		dao.update(dto);
	}

	@Override
	public void delete(int idx) throws Exception {
		dao.delete(idx);
	}
	
}
