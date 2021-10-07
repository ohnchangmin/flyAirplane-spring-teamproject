package com.airplane.pension.interceptor;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.airplane.pension.constant.Role;
import com.airplane.pension.dto.Member;

public class AuthInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		Member roleCheck = (Member) session.getAttribute("member");
		PrintWriter out = response.getWriter();
		response.setContentType("text/html; charset=utf-8");
		
		if (session.getAttribute("member") == null) {
			String message = "<script>alert('권한이 필요합니다. 로그인 해주세요'); location.href='/pension/member/loginForm';</script>";
			out.println(message);
			out.flush();
			out.close();
			return false;
		}
		else {
			if(roleCheck.getRole().equals(Role.USER)) {
				String message = "<script>alert('관리자 권한이 필요합니다.'); location.href='/pension/notice/list';</script>";
				out.println(message);
				out.flush();
				out.close();
				System.out.println("권한필요해서 튕김" + roleCheck.getRole().equals(Role.USER));
				return false;
			}
			else {
				System.out.println("어드민이라 넘어감" + roleCheck.getRole().equals(Role.USER));
				return true;
			}			
		}
	}
}
