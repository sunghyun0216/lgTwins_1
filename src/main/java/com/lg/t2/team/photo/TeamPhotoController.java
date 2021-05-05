package com.lg.t2.team.photo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TeamPhotoController {
	
	//404 오류 안뜨기 위한 임시용 
	@RequestMapping("teaminfo/photoes")
	public String tempPay () throws Exception {
		
		return "home";
	}
	
}
