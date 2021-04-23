package com.lg.t2.util;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileManager {

	public File makePath(HttpSession session)throws Exception{
		String path = session.getServletContext().getRealPath("resources/upload/member");
		System.out.println(path);
		
		File file = new File(path);
	
		if(!file.exists()) {
			file.mkdir();
		}
		return file;
	}
	
	public String save(String name, MultipartFile multipartFile,HttpSession session)throws Exception{
		String path= session.getServletContext().getRealPath("resources/upload"+name);
		
		System.out.println(path);
		
		File file = new File(path);
		
		if(!file.exists()) {
			file.mkdir();
		}
		
		String fileName="";
		
		fileName =UUID.randomUUID().toString()+"_"+multipartFile.getOriginalFilename();
		
		file = new File(file, fileName);
		
		multipartFile.transferTo(file);
		
		return fileName;
		
	}
	
	public boolean delete(String name,String fileName ,HttpSession session)throws Exception {
		//1. 경로 설정
		String path = session.getServletContext().getRealPath("resources/upload/"+name);
		File file = new File(path, fileName);
		boolean check = false;
		if(file.exists()) {
			check = file.delete();
		}
		return check;
	}
	
}


