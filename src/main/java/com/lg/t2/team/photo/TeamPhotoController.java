package com.lg.t2.team.photo;


import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("teaminfo/**")
public class TeamPhotoController {
	
	
//	//404 오류 안뜨기 위한 임시용 
//	@RequestMapping("teaminfo/photos")
//	public String tempPay () throws Exception {
//		
//		return "home";
//	}
//	@GetMapping("/uploadForm")
//	public void uploadForm() throws Exception{
//		System.out.println("file upload");
//	}
//	
//	@PostMapping("/uploadFormAction" )
//	public void uploadFormPost(MultipartFile[] uploadFile, Model model , HttpSession session)throws Exception{
//		
//		//1. form 제출
//		//2. 사진 제출 
//		
//	}//end uploadFormPost
}

