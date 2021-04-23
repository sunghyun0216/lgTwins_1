package com.lg.t2.teaminfo;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.lg.t2.MyAbstractTest;


public class TeamInfoTestDAO extends MyAbstractTest {

	@Autowired
	private TeamInfoDAO teamInfoDAO;
	
//	@Test
//	public void getRosterInfoSelect() throws Exception {
//		List<TeamMemberInfoDTO> ar = teamInfoDAO.getRosterInfoSelect();
//		assertNotEquals(0, ar.size());
//		
//		//리스트 출력하기 
//	}
	
//	@Test
//	public void getPerInfoSelectTest() throws Exception{
//		
//		TeamMemberInfoDTO tmiDTO= new TeamMemberInfoDTO();
//		tmiDTO.settNum(3);
//		MemberBioDTO mbDTO = teamInfoDAO.getPerInfoSelect(tmiDTO);
//		assertNotNull(mbDTO);
//		System.out.println(mbDTO.getEdu());
//	}
//	성공
//	
//	@Test //성공
//	public void getRosterPerPosiSelectTest() throws Exception {
//		List<TeamMemberInfoDTO> rl = teamInfoDAO.getRosterPerPosiSelect(11);
//		assertNotEquals(0, rl.size());
//		System.out.println(rl);
//	}
	
	
}
