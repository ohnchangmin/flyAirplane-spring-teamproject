package com.airplane.pension.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.airplane.pension.dto.Member;

@Repository
public class MemberDaoImpl implements MemberDao{

	@Autowired
	SqlSession session;
	
	@Override
	public void saveMember(Member member) throws Exception {
		session.insert("member.join", member);				
	}
	
	@Override
	public Member login(Member member) throws Exception{
		return session.selectOne("member.login", member);
	}
	
}
