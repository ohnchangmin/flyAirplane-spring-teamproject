package com.airplane.pension.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.airplane.pension.dto.AdminDto;
import com.airplane.pension.service.AdminService;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	@Autowired
	AdminService service;
	
	@RequestMapping(value = "/adminLoginView", method = RequestMethod.GET)
	public String adminLoginView() {
		return "admin/adminLoginView";
	}
	
	@RequestMapping(value = "/adminLogin", method = RequestMethod.POST)
	public String adminLogin(AdminDto dto, HttpSession session) throws Exception {
		service.loginCheck(dto, session);
		return "redirect:/notice/list";
	}
}
