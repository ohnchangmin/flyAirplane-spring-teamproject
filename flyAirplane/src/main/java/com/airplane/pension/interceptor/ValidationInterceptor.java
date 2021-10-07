package com.airplane.pension.interceptor;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class ValidationInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		String password = request.getParameter("password");
		String passwordCheck = request.getParameter("passwordCheck");
		
		if(password.equals(passwordCheck)) {
			return true;
		}
		else {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			String message = "<script>alert('비밀번호가 일치하지 않습니다.'); location.href='/pension/member/joinForm';</script>";
			out.println(message);
			out.flush();
			out.close();
			return false;
		}
	}
	
}
