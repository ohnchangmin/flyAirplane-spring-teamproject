package com.airplane.pension.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String adminLoginView(Model model, String text) {
		System.out.println("text= " + text);
		if(text != null && text.equals("loginFail"))
		{
			model.addAttribute("text", "아이디 또는 비밀번호가 잘못 입력 되었습니다. <br> 아이디와 비밀번호를 정확히 입력해주세요.");
		}
		
		return "admin/adminLoginView";
	}
	
	@RequestMapping(value = "/adminLogin", method = RequestMethod.POST)
	public String adminLogin(AdminDto dto, HttpSession session) throws Exception {
		boolean result = service.loginCheck(dto);
		if(result == true) {
			session.setAttribute("adminId", service.login(dto).getId());
			session.setAttribute("adminName", service.login(dto).getAdminName());
			return "redirect:/notice/list";
		}
		else{
			return "redirect:/admin/adminLoginView/?text=loginFail";
		}
	}
}
