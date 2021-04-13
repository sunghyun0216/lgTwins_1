package com.lg.t2.ticket;

import java.util.Date;

public class TicketDTO {
	private String teamName;
	private	Date playdate;
	private String teamLogo;
	private String sitNum;
	private long price;
	
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	public Date getPlaydate() {
		return playdate;
	}
	public void setPlaydate(Date playdate) {
		this.playdate = playdate;
	}
	public String getTeamLogo() {
		return teamLogo;
	}
	public void setTeamLogo(String teamLogo) {
		this.teamLogo = teamLogo;
	}
	public long getPrice() {
		return price;
	}
	public void setPrice(long price) {
		this.price = price;
	}
	public String getSitNum() {
		return sitNum;
	}
	public void setSitNum(String sitNum) {
		this.sitNum = sitNum;
	}
	
	
}
