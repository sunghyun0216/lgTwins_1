package com.lg.t2.team.photo;

import java.sql.Time;

public class TeamPhotoDTO {
	
	private int photosort; //사진 구분 1. 프로필 2.일반용(선수 모음)
	private int plrNum; // 누구의 사진인가
	private String fNames; //파일의 이름은
	private Time fUploadD; //업로드 날짜
	private String fURL; //서버 경로 : web-INF아래의 경로 저장
	
	
	public int getPhotosort() {
		return photosort;
	}
	public void setPhotosort(int photosort) {
		this.photosort = photosort;
	}
	
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
