package com.lg.t2.ticket;

import java.util.Date;

public class TicketDTO {
	private long orderNum;
	private String team;
	private	String playDate;
	private String playTime;
	private String logo;
	

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
	public String getPlayDate() {
		return playDate;
	}
	public void setPlayDate(String playDate) {
		this.playDate = playDate;
	}
	public String getPlayTime() {
		return playTime;
	}
	public void setPlayTime(String playTime) {
		this.playTime = playTime;
	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	
	
}
