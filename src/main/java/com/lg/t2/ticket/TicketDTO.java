package com.lg.t2.ticket;

import java.util.Date;

public class TicketDTO {
	private long num;
	private String teamName;
	private	Date playDate;
	private String teamLogo;
	
	
	public long getNum() {
		return num;
	}
	public void setNum(long num) {
		this.num = num;
	}
	
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

	
	
}
