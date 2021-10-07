package com.airplane.pension.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.airplane.pension.dto.Member;
import com.airplane.pension.service.MemberService;

@Controller
@RequestMapping("member/*")
public class MemberController {
	
	@Autowired
	MemberService service;
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(Member member) throws Exception {
		service.saveMember(member);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
	public String joinForm() { 
		return "member/joinForm";
	}
	
	@RequestMapping(value = "/loginForm", method = RequestMethod.GET)
	public String loginForm(Model model, String text) {
		if(text != null && text.equals("loginFail")) {
			model.addAttribute("text", "아이디 또는 비밀번호가 잘못 입력 되었습니다. <br> 아이디와 비밀번호를 정확히 입력해주세요.");
		}
		return "member/loginForm";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(Member member, HttpSession session) throws Exception {
		if(service.loginCheck(member)){
			session.setAttribute("member", service.login(member));
			Member tem = (Member)session.getAttribute("member");
			System.out.println(tem.getRole());
		}
		else {
			return "redirect:/member/loginForm/?text=loginFail";
		}
		return "redirect:/";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String loginForm(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}
