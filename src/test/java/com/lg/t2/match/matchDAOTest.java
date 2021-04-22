package com.lg.t2.match;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.lg.t2.MyAbstractTest;

public class matchDAOTest extends MyAbstractTest{

	@Autowired
	private MatchDAO matchDAO;

	@Test
	public void getListTest()throws Exception {
		List<MatchDTO> ar = matchDAO.getList5();
		assertNotEquals(5, ar.size());
	}

	@Test
	public void setInsertTest()throws Exception{
		MatchDTO matchDTO = new MatchDTO();
		matchDTO.setOrderNum(2000);
		matchDTO.setScore1(0);
		matchDTO.setScore2(0);
		matchDTO.setScore3(0);
		matchDTO.setScore4(0);
		matchDTO.setScore5(0);
		matchDTO.setScore6(0);
		matchDTO.setScore7(0);
		matchDTO.setScore8(0);
		matchDTO.setScore9(0);
		matchDTO.setRuns(0);
		matchDTO.setHits(0);
		matchDTO.setMistake(0);
		matchDTO.setBalls(0);

		int result = matchDAO.setInsert(matchDTO);

		assertEquals(1, result);
	}
}
