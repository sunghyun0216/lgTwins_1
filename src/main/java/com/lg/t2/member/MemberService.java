package com.lg.t2.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	public MemberDTO memberIdCheck(MemberDTO memberDTO)throws Exception{
		return memberDAO.memberIdCheck(memberDTO);
	}
	
	public MemberDTO memberLogin(MemberDTO memberDTO)throws Exception{
		memberDTO = memberDAO.memberLoign(memberDTO);
		return memberDTO;
	}
	
	public int memberJoin(MemberDTO memberDTO)throws Exception{
		int result = memberDAO.memberJoin(memberDTO);
		return result;
	}
	
	
	
}