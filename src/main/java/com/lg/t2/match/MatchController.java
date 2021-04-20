package com.lg.t2.match;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lg.t2.gameBox.GameBoxDTO;
import com.lg.t2.gameBox.GameBoxService;

@Controller
//@RequestMapping("/match/**")
public class MatchController {

	@Autowired
	private MatchService matchService;
	
	@RequestMapping("/match/matchList")
	public void getList(MatchDTO matchDTO, Model model)throws Exception{
		List<MatchDTO> ar = matchService.getList(matchDTO);
		model.addAttribute("list", ar);
	}
	
}
