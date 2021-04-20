package com.lg.t2.teaminfo;

import java.util.Date;

public class MemberBioDTO extends TeamMemberInfoDTO{
	
	//  tbNum NUMBER, --팀원 식별 외래키
//    birth DATE NOT NULL , 
//    height NUMBER NOT NULL,
//    weight NUMBER NOT NULL, 
//    edu VARCHAR2(200) null, 
//
//    CONSTRAINT BioInfo_PK PRIMARY KEY (tbNum),
//    CONSTRAINT tpNum_FK FOREIGN KEY(tbNum) REFERENCES twinsMemberInfo(tNum) On DELETE CASCADE
	private int tbNum;
	private Date birth;
	private int height;
	private int weight;
	private String edu;
	
	public int getTbNum() {
		return tbNum;
	}
	public void setTbNum(int tbNum) {
		this.tbNum = tbNum;
	}
	
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public String getEdu() {
		return edu;
	}
	public void setEdu(String edu) {
		this.edu = edu;
	}
	
	@Override
	public int gettNum() {
		// TODO Auto-generated method stub
		return super.gettNum();
	}
	@Override
	public void settNum(int tNum) {
		// TODO Auto-generated method stub
		super.settNum(tNum);
	}
	@Override
	public int getBackNum() {
		// TODO Auto-generated method stub
		return super.getBackNum();
	}
	@Override
	public void setBackNum(int backNum) {
		// TODO Auto-generated method stub
		super.setBackNum(backNum);
	}
	@Override
	public String gettKName() {
		// TODO Auto-generated method stub
		return super.gettKName();
	}
	@Override
	public void settKName(String tKName) {
		// TODO Auto-generated method stub
		super.settKName(tKName);
	}
	@Override
	public String gettEName() {
		// TODO Auto-generated method stub
		return super.gettEName();
	}
	@Override
	public void settEName(String tEName) {
		// TODO Auto-generated method stub
		super.settEName(tEName);
	}
	@Override
	public String getUsehand() {
		// TODO Auto-generated method stub
		return super.getUsehand();
	}
	@Override
	public void setUsehand(String usehand) {
		// TODO Auto-generated method stub
		super.setUsehand(usehand);
	}
	@Override
	public int getGrNum() {
		// TODO Auto-generated method stub
		return super.getGrNum();
	}
	@Override
	public void setGrNum(int grNum) {
		// TODO Auto-generated method stub
		super.setGrNum(grNum);
	}
	@Override
	public int getPsNum() {
		// TODO Auto-generated method stub
		return super.getPsNum();
	}
	@Override
	public void setPsNum(int psNum) {
		// TODO Auto-generated method stub
		super.setPsNum(psNum);
	}
	@Override
	public String getTgName() {
		// TODO Auto-generated method stub
		return super.getTgName();
	}
	@Override
	public void setTgName(String tgName) {
		// TODO Auto-generated method stub
		super.setTgName(tgName);
	}
	@Override
	public String getTpName() {
		// TODO Auto-generated method stub
		return super.getTpName();
	}
	@Override
	public void setTpName(String tpName) {
		// TODO Auto-generated method stub
		super.setTpName(tpName);
	}
	
	
	
}
