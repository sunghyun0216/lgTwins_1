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

//	@Test
//	public void getListTest()throws Exception {
//		List<GameBoxDTO> ar = gameBoxDAO.getList();
//		assertNotEquals(0, ar.size());
//	}

	@Test
	public void getSelectTest()throws Exception {
		GameBoxDTO gameBoxDTO = new GameBoxDTO();
		gameBoxDTO.setOrderNum(2);
		gameBoxDTO.setTeam("kt");
		gameBoxDTO.setScore(0);
		gameBoxDTO.setPlace("잠실");
		gameBoxDTO.setPlayDate(null);
		gameBoxDTO.setPlaying("경기전");
		gameBoxDTO.setWwl(null);
		gameBoxDTO.setLogo(null);
		assertNotNull(gameBoxDTO);
	}

	@Test
	public void setInsertTest()throws Exception{
		GameBoxDTO gameBoxDTO = new GameBoxDTO();
		gameBoxDTO.setOrderNum(2001);
		gameBoxDTO.setTeam("sk");
		gameBoxDTO.setScore(0);
		gameBoxDTO.setPlace("문학");
		gameBoxDTO.setPlayDate(null);
		gameBoxDTO.setPlaying("시작전");
		gameBoxDTO.setWwl("승");
		int result = gameBoxDAO.setInsert(gameBoxDTO);
		assertEquals(1, result);
	}
	//@Test
	public void setUpdateTest()throws Exception{
		GameBoxDTO gameBoxDTO = new GameBoxDTO();
		gameBoxDTO.setOrderNum(1);
		gameBoxDTO = gameBoxDAO.getSelect(gameBoxDTO);
		gameBoxDTO.setPlaying("경기종료");
		gameBoxDTO.setWwl("패");
		gameBoxDTO.setScore(1);
		int result = gameBoxDAO.setUpdate(gameBoxDTO);
		assertEquals(1, result);
	}

	//@Test
	public void setDeleteTest()throws Exception{
		GameBoxDTO gameBoxDTO = new GameBoxDTO();
		gameBoxDTO.setOrderNum(33);
		int result = gameBoxDAO.setDelete(gameBoxDTO);

		assertEquals(1, result);
	}
	
}
