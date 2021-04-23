package com.lg.t2.teaminfo;

public class TeamMemberInfoDTO {
	
	// tNum NUMBER, --primary key번호 (등록시 자동생성)
//    backNum NUMBER, --등 번호 --검사 필요
//    tKName VARCHAR2(20) NOT NULL, -- 한글이름
//    tEName VARCHAR2(30) NOT NULL,
//    useHand VARCHAR2(12) NOT NULL, -- 사용 손 
//    grNum NUMBER,-- 소속 그룹 넘버
//    psNum NUMBER, -- 포지션 구분 넘버
//    
//    CONSTRAINT TWMember_PK PRIMARY KEY (tNum),
//    CONSTRAINT grNum_FK FOREIGN KEY(grNum) REFERENCES teamGroup(tgNum),
//    CONSTRAINT psNum_FK FOREIGN KEY(psNum) REFERENCES teamPostion(tpNum)
	
	//커리어, 포지션 기본으로 가져야한다.
	
	private int tNum;
	private int backNum;
	private String tKName;
	private String tEName;
	private String usehand;
	private int joinyear;
	private int grNum;
	private int psNum;
//	//JOIN 연산 뒤 따라 붙는 칼럼들
	private String tgName;
	private String tpName;
	
	
	public int gettNum() {
		return tNum;
	}
	public void settNum(int tNum) {
		this.tNum = tNum;
	}
	public int getBackNum() {
		return backNum;
	}
	public void setBackNum(int backNum) {
		this.backNum = backNum;
	}
	public String gettKName() {
		return tKName;
	}
	public void settKName(String tKName) {
		this.tKName = tKName;
	}
	public String gettEName() {
		return tEName;
	}
	public void settEName(String tEName) {
		this.tEName = tEName;
	}
	public String getUsehand() {
		return usehand;
	}
	public void setUsehand(String usehand) {
		this.usehand = usehand;
	}
	
	public int getJoinyear() {
		return joinyear;
	}
	public void setJoinyear(int joinyear) {
		this.joinyear = joinyear;
	}
	public int getGrNum() {
		return grNum;
	}
	public void setGrNum(int grNum) {
		this.grNum = grNum;
	}
	public int getPsNum() {
		return psNum;
	}
	public void setPsNum(int psNum) {
		this.psNum = psNum;
	}
	public String getTgName() {
		return tgName;
	}
	public void setTgName(String tgName) {
		this.tgName = tgName;
	}
	public String getTpName() {
		return tpName;
	}
	public void setTpName(String tpName) {
		this.tpName = tpName;
	}
	
}
