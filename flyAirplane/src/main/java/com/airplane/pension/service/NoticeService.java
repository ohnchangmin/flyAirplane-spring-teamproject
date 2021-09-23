package com.airplane.pension.service;

import java.util.List;

import com.airplane.pension.dto.NoticeDto;

public interface NoticeService {
	
	//공지사항 글작성
	public void write(NoticeDto dto) throws Exception;
	
	//공지사항 조회
	public List<NoticeDto> list() throws Exception;
	
	//공지사항 내용 조회
	public NoticeDto read(int idx) throws Exception;
}
