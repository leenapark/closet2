package com.closet.vo;

public class MyRoomVo {

	private String id;
	private String nickName;
	private String profileImg;
	private int todayVisit;
	private int totalVisit;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getProfileImg() {
		return profileImg;
	}
	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}
	public int getTodayVisit() {
		return todayVisit;
	}
	public void setTodayVisit(int todayVisit) {
		this.todayVisit = todayVisit;
	}
	public int getTotalVisit() {
		return totalVisit;
	}
	public void setTotalVisit(int totalVisit) {
		this.totalVisit = totalVisit;
	}
	@Override
	public String toString() {
		return "MyRoomVo [id=" + id + ", nickName=" + nickName + ", profileImg=" + profileImg + ", todayVisit="
				+ todayVisit + ", totalVisit=" + totalVisit + "]";
	}
}
