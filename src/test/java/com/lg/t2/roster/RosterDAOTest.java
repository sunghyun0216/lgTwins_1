package com.lg.t2.roster;

import static org.junit.Assert.assertNotEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.lg.t2.MyAbstractTest;

public class RosterDAOTest extends MyAbstractTest {
	
	@Autowired
	private RosterDAO rosterDAO;

	@Test
	public void getListTest()throws Exception{
		List<RosterPositionDTO> ar = rosterDAO.getALLPosiList();
		assertNotEquals(0, ar.size());
	}
}
