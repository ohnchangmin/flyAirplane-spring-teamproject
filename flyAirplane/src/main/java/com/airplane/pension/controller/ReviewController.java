package com.airplane.pension.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/review/*")
public class ReviewController {
	
	@RequestMapping(value = "/reviewBoard", method = RequestMethod.GET)
	public String adminLoginView() {
		return "review/reviewBoard";
	}
}
