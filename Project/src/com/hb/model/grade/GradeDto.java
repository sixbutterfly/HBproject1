package com.hb.model.grade;

public class GradeDto {
	int stuno;
	String memname;
	int roomno;
	String javagrade;
	String webgrade;
	String framegrade;
	public int getStuno() {
		return stuno;
	}
	public String getMemname() {
		return memname;
	}
	public int getRoomno() {
		return roomno;
	}
	public String getJavagrade() {
		return javagrade;
	}
	public String getWebgrade() {
		return webgrade;
	}
	public String getFramegrade() {
		return framegrade;
	}
	public void setStuno(int stuno) {
		this.stuno = stuno;
	}
	public void setMemname(String memname) {
		this.memname = memname;
	}
	public void setRoomno(int roomno) {
		this.roomno = roomno;
	}
	public void setJavagrade(String javagrade) {
		this.javagrade = javagrade;
	}
	public void setWebgrade(String webgrade) {
		this.webgrade = webgrade;
	}
	public void setFramegrade(String framegrade) {
		this.framegrade = framegrade;
	}
}