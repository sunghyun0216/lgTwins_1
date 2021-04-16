package com.lg.t2.gameBox;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
//@RequestMapping("/gameBox/**")
public class GameBoxController {

	@Autowired
	private GameBoxService gameBoxService;

	@RequestMapping("/gameBox/gameCalendar")
	public void List(GameBoxDTO gameBoxDTO, ModelAndView mv)throws Exception{
		List<GameBoxDTO> ar = gameBoxService.getList(gameBoxDTO);
		mv.addObject("list", ar);

	}

	@RequestMapping("/gameBox/gameBoxList")
	public void getList(GameBoxDTO gameBoxDTO, Model model)throws Exception{
		List<GameBoxDTO> ar = gameBoxService.getList(gameBoxDTO);
		model.addAttribute("list", ar);

	}

	@RequestMapping(value = "gameBoxSelect")
	public ModelAndView getSelect(GameBoxDTO gameBoxDTO)throws Exception{

		ModelAndView mv = new ModelAndView();
		gameBoxDTO = gameBoxService.getSelect(gameBoxDTO);

		mv.addObject("dto", gameBoxDTO);
		mv.setViewName("gameBox/gameBoxSelect");
		return mv;
	}
	
	@RequestMapping(value = "/gameBox/gameBoxInsert", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView setInsert()throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("gameBox/gameBoxInsert");
		mv.addObject("result", "result");
		return mv;
	}

}
