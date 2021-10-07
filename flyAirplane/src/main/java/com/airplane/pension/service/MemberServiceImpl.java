package com.airplane.pension.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.airplane.pension.constant.Role;
import com.airplane.pension.dao.MemberDao;
import com.airplane.pension.dto.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao dao;
	
	@Autowired
	PasswordEncoder passwordEncoder;
	
	@Override
	public void saveMember(Member member) throws Exception {
		passwordEncode(member);
		member.setRole(Role.USER);
		dao.saveMember(member);
	}
	
	@Override
	public Member login(Member member) throws Exception{
		return dao.login(member);
	}

	@Override
	public Member passwordEncode(Member member) throws Exception {
		String encodePassword = passwordEncoder.encode(member.getPassword());
		member.setPassword(encodePassword);
		return member;
	}
	
	@Override
	public boolean loginCheck(Member member) throws Exception{
		Member dto = dao.login(member);
		
		if(dto != null) {
			String encodedPassword = dto.getPassword();
			return passwordEncoder.matches(member.getPassword(), encodedPassword);
		}
		else {
			return false;
		}
	}
}
