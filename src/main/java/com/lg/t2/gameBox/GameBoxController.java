package com.lg.t2.gameBox;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
//@RequestMapping("/gameBox/**")
public class GameBoxController {

	@Autowired
	private GameBoxService gameBoxService;

	@RequestMapping("/gameBox/gameBoxUpdate")
	public void setUpdate(GameBoxDTO gameBoxDTO, Model model)throws Exception{
		gameBoxDTO = gameBoxService.getSelect(gameBoxDTO);
		model.addAttribute("dto", gameBoxDTO);	
		
	}
	
	@RequestMapping(value = "/gameBox/gameBoxUpdate", method = RequestMethod.POST)
	public String setUpdate(GameBoxDTO gameBoxDTO)throws Exception{
		int result = gameBoxService.setUpdate(gameBoxDTO);
		return "redirect:./gameBoxList";
	}

	
	@RequestMapping("/gameBox/gameBoxSelect")
	public void getList3(GameBoxDTO gameBoxDTO, Model model)throws Exception{
		List<GameBoxDTO> ar = gameBoxService.getList(gameBoxDTO);
		
		model.addAttribute("list", ar);
	}
	
	@RequestMapping("/gameBox/gameCalendar")
	public void getList2(GameBoxDTO gameBoxDTO, Model model)throws Exception{
		List<GameBoxDTO> ar = gameBoxService.getList(gameBoxDTO);
		
		model.addAttribute("list", ar);

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
	
	@GetMapping("/gameBox/gameBoxInsert")
	public ModelAndView setInsert()throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("gameBox/gameBoxInsert");
		mv.addObject("result", "result");
		return mv;
	}

	
	@PostMapping("/gameBox/gameBoxInsert")//머지
	public String setInsert(GameBoxDTO gameBoxDTO, Model model)throws Exception{
	
		int result = gameBoxService.setInsert(gameBoxDTO);
		
		String message = "등록실패";
		
		if(result>0) {
			message="등록성공";
		}
		
		model.addAttribute("msg", message);
		model.addAttribute("path", "./gameBoxList");		
		return "common/commonResult";
	}

	
}
