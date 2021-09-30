package com.airplane.pension.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.airplane.pension.dto.Criteria;
import com.airplane.pension.dto.NoticeDto;
import com.airplane.pension.dto.PageMaker;
import com.airplane.pension.service.NoticeService;

@Controller
@RequestMapping("/notice/*")
public class NoticeController {
	
	@Autowired
	NoticeService service;
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String Notice(Model model, Criteria cri) throws Exception {
		model.addAttribute("list", service.list(cri));
		
		PageMaker pageMaker= new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listCount());
		model.addAttribute("page", cri.getPage());
		model.addAttribute("pageMaker", pageMaker);
		return "notice/list";
	}
	
	@RequestMapping(value = "/readView", method = RequestMethod.GET)
	public String Read(Model model, NoticeDto dto) throws Exception{
		model.addAttribute("selectOne", service.read(dto.getIdx()));
		return "notice/readView";
	}
	
	@RequestMapping(value = "/writeView", method = RequestMethod.GET)
	public String writeView() {
		return "notice/writeView";
	}
	
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String write(NoticeDto dto) throws Exception{
		service.write(dto);		
		return "redirect:/notice/list";
	}
	
	@RequestMapping(value = "/updateView", method = RequestMethod.GET)
	public String updateView(Model model, NoticeDto dto) throws Exception {
		model.addAttribute("update", service.read(dto.getIdx()));
		return "notice/updateView";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(NoticeDto dto) throws Exception{
		service.update(dto);
		return "redirect:/notice/list";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(int idx) throws Exception{
		service.delete(idx);
		return "redirect:/notice/list";
	}
}
