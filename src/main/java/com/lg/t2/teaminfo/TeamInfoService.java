package com.lg.t2.teaminfo;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TeamInfoService {
	
	@Autowired
	private TeamInfoDAO teamInfoDAO;
	
	@Autowired
	private HttpSession session;
	
	
	
	
	
}
