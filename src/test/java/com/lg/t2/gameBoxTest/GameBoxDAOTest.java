package com.lg.t2.gameBoxTest;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.lg.t2.MyAbstractTest;
import com.lg.t2.gameBox.GameBoxDAO;
import com.lg.t2.gameBox.GameBoxDTO;

public class GameBoxDAOTest extends MyAbstractTest{

	@Autowired
	private GameBoxDAO gameBoxDAO;

	@Test
	public void getListTest()throws Exception {
		List<GameBoxDTO> ar = gameBoxDAO.getList();
		assertNotEquals(0, ar.size());
	}

	@Test
	public void getSelectTest()throws Exception {
		GameBoxDTO gameBoxDTO = new GameBoxDTO();
		gameBoxDTO.setOrderNum(2);
		gameBoxDTO.setTeam("kt");
		gameBoxDTO.setScore(0);
		gameBoxDTO.setPlace("잠실");
		gameBoxDTO.setPlayDate(null);
		gameBoxDTO.setPlaying("경기전");
		assertNotNull(gameBoxDTO);
	}

	@Test
	public void setInsertTest()throws Exception{
		GameBoxDTO gameBoxDTO = new GameBoxDTO();
		gameBoxDTO.setOrderNum(0);
		gameBoxDTO.setTeam("sk");
		gameBoxDTO.setScore(0);
		gameBoxDTO.setPlace("문학");
		gameBoxDTO.setPlayDate(null);
		gameBoxDTO.setPlaying("시작전");
		int result = gameBoxDAO.setInsert(gameBoxDTO);
		assertEquals(1, result);
	}
}
