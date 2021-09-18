package com.airplane.pension.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.airplane.pension.dao.NoticeDao;
import com.airplane.pension.dto.NoticeDto;

@Controller
public class NoticeController {
	
	@Autowired
	NoticeDao dao;
	
//	@RequestMapping(value = "/notice")
//	public String Notice(Model model) {
//		List<NoticeDto> list = new ArrayList<NoticeDto>();
//		NoticeDto notice1 = new NoticeDto(1, "제목2", "작성자", "내용없음", "2021-09-18");
//		list.add(notice1);
//		
//		model.addAttribute("list", list);
//		
//		return "notice";
//	}
	
	@RequestMapping(value = "/notice")
	public String Notice(Model model) {
		List<NoticeDto> list = dao.selectList();
		model.addAttribute("list", list);
		return "notice";
	}
}
