package com.lg.t2.roster;

public class RosterPositionDTO {
	
	/*CREATE TABLE teamPosiName(
			posiNum NUMBER, -- 기본키X 
			posiName VARCHAR2(50), --포지션 이름 ()

			CONSTRAINT tpsin_PK Primary KEY (posiNum) 
			)
	  */
	
	private int posiNum;
	private String posiName;
	
	public int getPosiNum() {
		return posiNum;
	}
	public void setPosiNum(int posiNum) {
		this.posiNum = posiNum;
	}
	public String getPosiName() {
		return posiName;
	}
	public void setPosiName(String posiName) {
		this.posiName = posiName;
	}
	
	
}
