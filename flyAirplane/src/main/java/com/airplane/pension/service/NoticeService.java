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
	
	//공지사항 수정
	public void update(NoticeDto dto) throws Exception;
	
	//공지사항 삭제
	public void delete(int idx) throws Exception;
}
