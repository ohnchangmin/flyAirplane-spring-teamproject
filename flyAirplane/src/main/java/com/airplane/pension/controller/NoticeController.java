package com.airplane.pension.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.airplane.pension.dto.NoticeDto;
import com.airplane.pension.service.NoticeService;

@Controller
@RequestMapping("/notice/*")
public class NoticeController {
	
	@Autowired
	NoticeService service;
	
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
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String Notice(Model model) throws Exception {
		model.addAttribute("list", service.list());
		return "notice/list";
	}
	
	@RequestMapping(value = "/readView", method = RequestMethod.GET)
	public String Read(Model model, NoticeDto dto) throws Exception{
		model.addAttribute("selectOne", service.read(dto.getIdx()));
		return "notice/readView";
	}
	
	@RequestMapping(value = "/writeView", method = RequestMethod.GET)
	public String write() {
		return "notice/writeView";
	}
	
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String write(NoticeDto dto) throws Exception{
		service.write(dto);		
		return "redirect:/list";
	}
	
}
