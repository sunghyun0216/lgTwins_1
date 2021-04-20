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

}
