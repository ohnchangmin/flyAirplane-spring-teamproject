package com.airplane.pension.dao;

import java.util.List;

import com.airplane.pension.dto.NoticeDto;

public interface NoticeDao {
	
	public void write(NoticeDto dto) throws Exception;
	
	public List<NoticeDto> read() throws Exception;
}
