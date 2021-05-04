package com.lg.t2.team.photo;

import java.sql.Time;

public class TeamPhotoDTO {
	
	private int plrNum; // 누구의 사진인가?
	private String fNamese;
	private Time fUploadD;
	private String fURL;
	
	public int getPlrNum() {
		return plrNum;
	}
	public void setPlrNum(int plrNum) {
		this.plrNum = plrNum;
	}
	public String getfNamese() {
		return fNamese;
	}
	public void setfNamese(String fNamese) {
		this.fNamese = fNamese;
	}
	public Time getfUploadD() {
		return fUploadD;
	}
	public void setfUploadD(Time fUploadD) {
		this.fUploadD = fUploadD;
	}
	public String getfURL() {
		return fURL;
	}
	public void setfURL(String fURL) {
		this.fURL = fURL;
	}
	
	
}
