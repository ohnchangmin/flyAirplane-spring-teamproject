package com.airplane.pension.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
		return "member/join";
	}
	
	@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
	public String joinForm() { 
		return "member/joinForm";
	}
}
