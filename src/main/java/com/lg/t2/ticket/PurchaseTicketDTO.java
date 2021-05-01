package com.lg.t2.ticket;

import java.util.Date;

public class PurchaseTicketDTO {
	private String team;
	private String playDate;
	private String playTime;
	private String logo;
	private String sitNum;
	private long price;
	private String id;
	
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
	public String getSitNum() {
		return sitNum;
	}
	public void setSitNum(String sitNum) {
		this.sitNum = sitNum;
	}
	public long getPrice() {
		return price;
	}
	public void setPrice(long price) {
		this.price = price;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	
}
