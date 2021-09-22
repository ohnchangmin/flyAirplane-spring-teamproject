package com.airplane.pensionl.service;

import java.util.List;

import com.airplane.pension.dto.NoticeDto;

public interface NoticeService {
	
	public void write(NoticeDto dto) throws Exception;
	
	//공지사항 조회
	public List<NoticeDto> list() throws Exception;
}
