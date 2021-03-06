package com.airplane.pension.service;

import com.airplane.pension.dto.Member;

public interface MemberService {
	public void saveMember(Member member) throws Exception;
	
	public Member passwordEncode(Member member) throws Exception;

	boolean loginCheck(Member member) throws Exception;

	public Member login(Member member) throws Exception;
}
