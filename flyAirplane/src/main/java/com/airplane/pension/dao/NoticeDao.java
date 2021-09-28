package com.airplane.pension.dao;

import java.util.List;

import com.airplane.pension.dto.Criteria;
import com.airplane.pension.dto.NoticeDto;

public interface NoticeDao {
	
	public void write(NoticeDto dto) throws Exception;
	
	public List<NoticeDto> list() throws Exception;
	
	public NoticeDto read(int idx) throws Exception;
	
	public void update(NoticeDto dto) throws Exception;
	
	public void delete(int idx) throws Exception;
	
	public List<NoticeDto> list(Criteria cri) throws Exception;
	
	public int listCount() throws Exception;
}
