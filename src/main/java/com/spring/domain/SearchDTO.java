package com.spring.domain;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class SearchDTO {
	private int user_uid;
	private int s_weight;
	private int s_cnt;
	private LocalDateTime s_time;
	private int c_uid;
	
	
	public int getUser_uid() {
		return user_uid;
	}
	public void setUser_uid(int user_uid) {
		this.user_uid = user_uid;
	}
	public int getC_uid() {
		return c_uid;
	}
	public void setC_uid(int c_uid) {
		this.c_uid = c_uid;
	}
	public int getS_weight() {
		return s_weight;
	}
	public void setS_weight(int s_weight) {
		this.s_weight = s_weight;
	}
	public int getS_cnt() {
		return s_cnt;
	}
	public void setS_cnt(int s_cnt) {
		this.s_cnt = s_cnt;
	}
	public void setS_time(LocalDateTime s_time) {
		this.s_time = s_time;
	}
	
	public String getS_time() {
		if(this.s_time == null) return "";
		return this.s_time.format(DateTimeFormatter.ofPattern("yyyy-MM-dd hh:mm:ss"));
	}
}
