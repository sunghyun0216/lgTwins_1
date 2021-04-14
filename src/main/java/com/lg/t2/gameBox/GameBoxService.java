package com.lg.t2.gameBox;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GameBoxService {

	@Autowired
	private GameBoxDAO gameBoxDAO;

//	@Autowired
//	private HttpSession session;
	
	public List<GameBoxDTO> getList(GameBoxDTO gameBoxDTO)throws Exception{
		return gameBoxDAO.getList();
	}

	public GameBoxDTO getSelect(GameBoxDTO gameBoxDTO) throws Exception{
		return gameBoxDAO.getSelect(gameBoxDTO);
	}
	
	public int setInsert(GameBoxDTO gameBoxDTO)throws Exception{
		return gameBoxDAO.setInsert(gameBoxDTO);
	}

}
