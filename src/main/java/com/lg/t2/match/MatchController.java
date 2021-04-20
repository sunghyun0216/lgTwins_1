package com.lg.t2.match;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lg.t2.gameBox.GameBoxDTO;
import com.lg.t2.gameBox.GameBoxService;

@Controller
//@RequestMapping("/match/**")
public class MatchController {

	@Autowired
	private MatchService matchService;
	
	@PostMapping("/match/matchList")
	public void getList5(MatchDTO matchDTO, Model model)throws Exception{
		List<MatchDTO> ar = matchService.getList5(matchDTO);
		model.addAttribute("list5", ar);
	}	

	
}
