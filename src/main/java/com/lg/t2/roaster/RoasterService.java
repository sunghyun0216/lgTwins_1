package com.lg.t2.roaster;

import org.springframework.beans.factory.annotation.Autowired;


public class RoasterService {
	
	
	@Autowired
	private RoasterDAO roasterDAO;
	//비회원, 회원, 관리자
	//1. a태그 클릭시 해당 선수 리스트 출력함 (select 기능)
	
	@Override
	public RoasterDTO getSelect(RoasterDTO roasterDTO) throws Exception {
		// TODO Auto-generated method stub
		int result = roasterDAO.setHitUpdate(roasterDTO);
		return roasterDAO.getSelect(roasterDTO);
	}
	//회원 
	//2. like check box 
	
	//관리자
	//3. 선수 정보(신상, 경력, 연봉, 사진) 삽입, 갱신, 삭제  
	//4. 사진 파일 업로드
	                                                                                                                                                             
	
}
