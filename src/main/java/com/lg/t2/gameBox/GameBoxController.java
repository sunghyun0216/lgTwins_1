package com.lg.t2.gameBox;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.log.UserDataHelper.Mode;
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
	
	@RequestMapping("/gameBox/gameBoxDelete")
	public ModelAndView setDelete(GameBoxDTO gameBoxDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = gameBoxService.setDelete(gameBoxDTO);
		String message = "삭제 실패";
		String path = "./gameBoxList";
		
		System.out.println("딜리트");
		if(result>0) {
			message = "삭제 성공";
		}
		mv.addObject("msg", message);
		mv.addObject("path", path);
		mv.setViewName("common/commonResult");
		
		return mv;
	}

	@GetMapping("/gameBox/gameBoxUpdate")
	public void setUpdate(GameBoxDTO gameBoxDTO, Model model)throws Exception{
		ModelAndView mv = new ModelAndView();

		gameBoxDTO = gameBoxService.getSelect(gameBoxDTO);
		System.out.println("업데1");
		model.addAttribute("dto",gameBoxDTO);
	}
	
	@PostMapping("/gameBox/gameBoxUpdate")
	public String setUpdate2(GameBoxDTO gameBoxDTO, Model model)throws Exception{
		
		int result = gameBoxService.setUpdate(gameBoxDTO);	
		
		String message = "등록실패";
		
		if(result>0) {
			message="등록성공";
		}
		System.out.println("업데2");
		model.addAttribute("msg", message);
		model.addAttribute("path", "./gameBoxList");		
		return "common/commonResult";
	}
	
	@RequestMapping("/gameBox/gameBoxSelect")
	public void getList3(GameBoxDTO gameBoxDTO, Model model)throws Exception{
		List<GameBoxDTO> ar = gameBoxService.getList(gameBoxDTO);
		
		model.addAttribute("list", ar);
	}
	
	@RequestMapping("/gameBox/gameCalendar")
	public void getList2(GameBoxDTO gameBoxDTO, Model model)throws Exception{
		SimpleDateFormat format1 = new SimpleDateFormat ("yyyyMMdd");
		
		Calendar cal = Calendar.getInstance();
		String format_Date = format1.format(cal.getTime());
		
		gameBoxDTO.setPlayDate(format_Date);
		
		List<GameBoxDTO> ar = gameBoxService.getList(gameBoxDTO);

		System.out.println(ar);
		System.out.println(ar.get(0));
		model.addAttribute("list", ar);

	}

	@RequestMapping("/gameBox/gameBoxList")
	public void getList(GameBoxDTO gameBoxDTO, Model model)throws Exception{
				
		SimpleDateFormat format1 = new SimpleDateFormat ("yyyyMMdd");
		
		Calendar cal = Calendar.getInstance();
		String format_Date = format1.format(cal.getTime());
		
		System.out.println("!!!!!!!!!!!!!!!!!!");
		System.out.println(gameBoxDTO.getPlayDate());
		
		String date = gameBoxDTO.getPlayDate();
		if(gameBoxDTO.getPlayDate() == null) {
			gameBoxDTO.setPlayDate(format_Date);
		}
		
		List<GameBoxDTO> ar = gameBoxService.getList(gameBoxDTO);

		model.addAttribute("date", date);
		model.addAttribute("list", ar);
	}

	@RequestMapping(value = "gameBoxUpdate")
	public ModelAndView getSelect(GameBoxDTO gameBoxDTO)throws Exception{

		ModelAndView mv = new ModelAndView();
		gameBoxDTO = gameBoxService.getSelect(gameBoxDTO);

		mv.addObject("dto", gameBoxDTO);
		mv.setViewName("gameBox/gameBoxUpdate");
		return mv;
	}
	
	@GetMapping("/gameBox/gameBoxInsert")
	public ModelAndView setInsert()throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println("인서트1");
		mv.setViewName("gameBox/gameBoxInsert");
		mv.addObject("result", "result");
		return mv;
	}

	
	@PostMapping("/gameBox/gameBoxInsert")//머지
	public String setInsert(GameBoxDTO gameBoxDTO, Model model)throws Exception{
	
		int result = gameBoxService.setInsert(gameBoxDTO);
		
		System.out.println("인서트2");
		System.out.println(gameBoxDTO.getPlayTime());
		String message = "등록실패";
		
		
		SimpleDateFormat format1 = new SimpleDateFormat ("yyyyMMdd");
		
		Calendar cal = Calendar.getInstance();
		String format_Date = format1.format(cal.getTime());
		
		gameBoxDTO.setPlayDate(format_Date);
	
		List<GameBoxDTO> ar = gameBoxService.getList(gameBoxDTO);
		
		model.addAttribute("list", ar);
		
		
		if(result>0) {
			message="등록성공";
		}
		
		model.addAttribute("msg", message);
		model.addAttribute("path", "./gameBoxInsert2");
		return "gameBox/gameBoxInsert2";	
	}

	
}
