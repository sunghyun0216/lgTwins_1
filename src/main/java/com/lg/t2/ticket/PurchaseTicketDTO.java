package com.lg.t2.ticket;

import java.util.Date;

public class PurchaseTicketDTO {
	private String teamName;
	private Date playDate;
	private String teamLogo;
	private String sitNum;
	private long price;
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	
	public Date getPlayDate() {
		return playDate;
	}
	public void setPlayDate(Date playDate) {
		this.playDate = playDate;
	}
	public String getTeamLogo() {
		return teamLogo;
	}
	public void setTeamLogo(String teamLogo) {
		this.teamLogo = teamLogo;
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
	
}
