package com.lg.t2.roaster;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
@RequestMapping("/roaster/**")
public class RoasterController {
	
	@Autowired
	private RoasterService roasterService;
	
	public ModelAndView getSelect (RoasterDTO roasterDTO)throws Exception{
		
		ModelAndView mv = new ModelAndView();
		roasterDTO = roasterService.getSelect(roasterDTO);
		mv.addObject("board", "qna");
		mv.addObject("dto", roasterDTO);
		mv.setViewName("roaster/roasterList");
		return mv;
	}
	
	
}
