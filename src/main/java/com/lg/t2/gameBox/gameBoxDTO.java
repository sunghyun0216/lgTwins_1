package com.lg.t2.gameBox;

import java.util.Date;

public class gameBoxDTO {
	
	private long orderNum;
	private String team;
	private long score;
	private String place;
	private Date playDate;
	private String playing;
	public long getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(long orderNum) {
		this.orderNum = orderNum;
	}
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	public long getScore() {
		return score;
	}
	public void setScore(long score) {
		this.score = score;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public Date getPlayDate() {
		return playDate;
	}
	public void setPlayDate(Date playDate) {
		this.playDate = playDate;
	}
	public String getPlaying() {
		return playing;
	}
	public void setPlaying(String playing) {
		this.playing = playing;
	}	
	
	
}
