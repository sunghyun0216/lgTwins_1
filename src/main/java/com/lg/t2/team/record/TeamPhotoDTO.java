package com.lg.t2.team.record;

import java.util.Date;

public class TeamPhotoDTO {

//
//    plrNum number, --선수 키번호(외래키)
//    fNames varchar2(200) not null, --(파일 이름)
//    fUploadD TIMESTAMP,--파일 업로드 날짜
//    fURL varchar2(500), -- 파일의 경로
	
	private int plrNum;
	private String fNames;
	private Date fUploadD;
	private String fURL;
	
	
	public int getPlrNum() {
		return plrNum;
	}
	public void setPlrNum(int plrNum) {
		this.plrNum = plrNum;
	}
	public String getfNames() {
		return fNames;
	}
	public void setfNames(String fNames) {
		this.fNames = fNames;
	}
	public Date getfUploadD() {
		return fUploadD;
	}
	public void setfUploadD(Date fUploadD) {
		this.fUploadD = fUploadD;
	}
	public String getfURL() {
		return fURL;
	}
	public void setfURL(String fURL) {
		this.fURL = fURL;
	}
	
	
	
}
