package com.lg.t2.team.sort;

public class TeamSortDTO {
	//팀분류, 포지션 별로 분류하는 테이블, 읽기 전용
	
	//분류(1코치스태프, 2선수단)
	//분류번호 
	//그룹 번호 (1군 퓨처스, 컨디셔닝 선수단)
	//그룹 이름
	//포지션 번호
	
	private int tcNum;
	private String tcName;
	
	private int tgNum;
	private String tgName;
	
	private int tpNum;
	private String tpName;
	
	
	public int getTcNum() {
		return tcNum;
	}
	public void setTcNum(int tcNum) {
		this.tcNum = tcNum;
	}
	public String getTcName() {
		return tcName;
	}
	public void setTcName(String tcName) {
		this.tcName = tcName;
	}
	public int getTgNum() {
		return tgNum;
	}
	public void setTgNum(int tgNum) {
		this.tgNum = tgNum;
	}
	public String getTgName() {
		return tgName;
	}
	public void setTgName(String tgName) {
		this.tgName = tgName;
	}
	public int getTpNum() {
		return tpNum;
	}
	public void setTpNum(int tpNum) {
		this.tpNum = tpNum;
	}
	public String getTpName() {
		return tpName;
	}
	public void setTpName(String tpName) {
		this.tpName = tpName;
	}
	
}
