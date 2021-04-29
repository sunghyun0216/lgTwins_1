package com.lg.t2.team.record;

public class TeamCareerDTO {
	
//	plrNum NUMBER NOT NULL ,--선수키번호, 외래키,중복가능
//    sYear NUMBER(4,0),--연봉년도(선수번호가 같다면 같은 년도 2개 있을 수 없음)
//    cContent VARCHAR2(300), -- 대강의 이력요약...
	
	
	private int plrNum;
	private int sYear;
	private String cContent;
	
	public int getPlrNum() {
		return plrNum;
	}
	public void setPlrNum(int plrNum) {
		this.plrNum = plrNum;
	}
	public int getsYear() {
		return sYear;
	}
	public void setsYear(int sYear) {
		this.sYear = sYear;
	}
	public String getcContent() {
		return cContent;
	}
	public void setcContent(String cContent) {
		this.cContent = cContent;
	}
	
	
}
