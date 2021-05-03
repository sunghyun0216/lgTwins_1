package com.lg.t2.team.member;

public class TeamMemberDTO {
	
	private int tNum;
	private int backNum;
	
	private String tKName;
	private String tEName;
	private String usehand;
	
	private int joinyear;
	
	private int tgNum;
	private int tpNum;
	
	private String tgName;
	private String tpName;
	
	private int likeNum; // 좋아요 갯수 

	public int gettNum() {
		return tNum;
	}

	public void settNum(int tNum) {
		this.tNum = tNum;
	}

	public int getBackNum() {
		return backNum;
	}

	public void setBackNum(int backNum) {
		this.backNum = backNum;
	}

	public String gettKName() {
		return tKName;
	}

	public void settKName(String tKName) {
		this.tKName = tKName;
	}

	public String gettEName() {
		return tEName;
	}

	public void settEName(String tEName) {
		this.tEName = tEName;
	}

	public String getUsehand() {
		return usehand;
	}

	public void setUsehand(String usehand) {
		this.usehand = usehand;
	}

	public int getJoinyear() {
		return joinyear;
	}

	public void setJoinyear(int joinyear) {
		this.joinyear = joinyear;
	}

	public int getTgNum() {
		return tgNum;
	}

	public void setTgNum(int tgNum) {
		this.tgNum = tgNum;
	}

	public int getTpNum() {
		return tpNum;
	}

	public void setTpNum(int tpNum) {
		this.tpNum = tpNum;
	}

	public String getTgName() {
		return tgName;
	}

	public void setTgName(String tgName) {
		this.tgName = tgName;
	}

	public String getTpName() {
		return tpName;
	}

	public void setTpName(String tpName) {
		this.tpName = tpName;
	}

	public int getLikeNum() {
		return likeNum;
	}

	public void setLikeNum(int likeNum) {
		this.likeNum = likeNum;
	}
	
	
}
