package com.lg.t2.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lg.t2.member.MemberDTO;

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
	
	public int memberUpdate(MemberDTO memberDTO)throws Exception{
		return memberDAO.memberUpdate(memberDTO);
	}
	
	
	public int memberDelete(MemberDTO memberDTO, HttpSession session)throws Exception{
		return memberDAO.memberDelete(memberDTO);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}