package com.lg.t2.team.record;

public class TeamPayDTO {

//	
//	  plrNum NUMBER NOT NULL ,--선수키번호, 외래키,중복가능
//	    sYear NUMBER(4,0),--연봉년도
//	    salary NUMBER,--금액 (만원)
	
	private int prlNum;
	private int sYear;
	private int salary;
	
	public int getPrlNum() {
		return prlNum;
	}
	public void setPrlNum(int prlNum) {
		this.prlNum = prlNum;
	}
	public int getsYear() {
		return sYear;
	}
	public void setsYear(int sYear) {
		this.sYear = sYear;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	
	
}
