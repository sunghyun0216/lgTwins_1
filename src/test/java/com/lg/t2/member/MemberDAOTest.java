package com.lg.t2.member;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.lg.t2.MyAbstractTest;

public class MemberDAOTest extends MyAbstractTest {

	@Autowired
	private MemberDAO memberDAO;

	/*
	 * @Test public void memberLoginTest()throws Exception{ MemberDTO memberDTO =
	 * new MemberDTO(); memberDTO.setId("lg1"); memberDTO.setPw("lg1");
	 * memberDTO=memberDAO.memberLoign(memberDTO);
	 * 
	 * assertNotNull(memberDTO); }
	 */
	@Test
	public void memberJoinTest()throws Exception{
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId("lg2");
		memberDTO.setPw("lg2");
		memberDTO.setName("lg2");
		memberDTO.setPhone("010-5566-7788");
		
		int result = memberDAO.memberJoin(memberDTO);
		assertEquals(1, result);
		
	}
	
	
	
	
	
	
	
}
