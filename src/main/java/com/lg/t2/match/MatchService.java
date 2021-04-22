package com.lg.t2.match;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lg.t2.gameBox.GameBoxDTO;

@Service
public class MatchService {

	@Autowired
	private MatchDAO matchDAO;
	
	public List<MatchDTO> getList5(MatchDTO matchDTO)throws Exception{
		return matchDAO.getList5();
	}	
	
	public int setInsert(MatchDTO matchDTO)throws Exception{
		return matchDAO.setInsert(matchDTO);
	}
	
}
