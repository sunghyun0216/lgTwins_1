package com.lg.t2.ticket;

import java.util.Date;

public class TicketDTO {
	private String teamName;
	private	Date playDate;
	private String teamLogo;

	
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	public Date getPlayDate() {
		return playDate;
	}
	public void setPlaydate(Date playDate) {
		this.playDate = playDate;
	}
	public String getTeamLogo() {
		return teamLogo;
	}
	public void setTeamLogo(String teamLogo) {
		this.teamLogo = teamLogo;
	}

	
	
}
