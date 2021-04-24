package com.lg.t2.match;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lg.t2.gameBox.GameBoxDTO;



@Controller
//@RequestMapping("/match/**")
public class MatchController {

	@Autowired
	private MatchService matchService;
	
	@GetMapping("/gameBox/gameBoxUpdate2")
	public void setUpdate(MatchDTO matchDTO , Model model)throws Exception{

		matchDTO = matchService.getSelect(matchDTO);
		
		model.addAttribute("dto",matchDTO);
	}
	
	@PostMapping("/gameBox/gameBoxUpdate2")
	public ModelAndView setUpdate2(MatchDTO matchDTO, ModelAndView mv)throws Exception{
		
		int result = matchService.setUpdate(matchDTO);	
		System.out.println("zzzz");
		String message = "등록실패";
		
		if(result>0) {
			message="등록성공";
			mv.setViewName("redirect: ./gameBoxList");
		} else {
			mv.addObject("msg", "수정실패");
			mv.addObject("path", "./gameBoxUpdate");		
			mv.setViewName("common/commonResult");
		}
		return mv;
	}
	
	
	@GetMapping("/match/matchList")
	public void getList5(MatchDTO matchDTO, Model model)throws Exception{
		List<MatchDTO> ar = matchService.getList5(matchDTO);
		model.addAttribute("list5", ar);
	}	
	
	@RequestMapping(value = "gameBoxUpdate2")
	public ModelAndView getSelect(MatchDTO matchDTO)throws Exception{
		System.out.println("zzzzzzzzzzzzzㅋㅋㅋㅇㅋ");
		ModelAndView mv = new ModelAndView();
		matchDTO = matchService.getSelect(matchDTO);

		mv.addObject("dto", matchDTO);
		mv.setViewName("gameBox/gameBoxUpdate2");
		return mv;
	}
	
	
	@GetMapping("/gameBox/gameBoxInsert2")
	public ModelAndView setInsert()throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println("z");
		mv.setViewName("gameBox/gameBoxInsert2");
		mv.addObject("result", "result");
		return mv;
	}

	@PostMapping("/gameBox/gameBoxInsert2")//머지
	public ModelAndView setInsert(MatchDTO matchDTO, ModelAndView mv)throws Exception{
	
		int result = matchService.setInsert(matchDTO);
		
		String message = "등록실패";
		System.out.println("Zz");
		
		if(result>0) {
			message="등록성공";
			mv.setViewName("redirect: ./gameBoxList");
		} else {
			mv.addObject("msg", "수정실패");
			mv.addObject("path", "./gameBoxInsert");
			mv.setViewName("common/commonResult");
		}
		
		return mv;	
	}

}
