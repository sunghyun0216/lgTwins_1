package com.lg.t2.teaminfo;

import static org.junit.Assert.assertNotEquals;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.lg.t2.MyAbstractTest;


public class TeamInfoTestDAO extends MyAbstractTest {

	@Autowired
	private TeamInfoDAO teamInfoDAO;
	
	@Test
	public void getAllRosterInfoTest() throws Exception {
		List<TeamMemberInfoDTO> ar = teamInfoDAO.getAllRosterInfo();
		assertNotEquals(0, ar.size());
		
		//리스트 출력하기 
	}
}
