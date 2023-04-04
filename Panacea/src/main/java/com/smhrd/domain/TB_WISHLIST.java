package com.smhrd.domain;

import java.sql.Timestamp;

public class TB_WISHLIST {
	
	private int wish_seq;
	private String user_id;
	private int pill_seq;
	private Timestamp req_date;
	
	public TB_WISHLIST(int wish_seq, String user_id, int pill_seq, Timestamp req_date) {
		super();
		this.wish_seq = wish_seq;
		this.user_id = user_id;
		this.pill_seq = pill_seq;
		this.req_date = req_date;
	}

	public int getWish_seq() {
		return wish_seq;
	}

	public void setWish_seq(int wish_seq) {
		this.wish_seq = wish_seq;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getPill_seq() {
		return pill_seq;
	}

	public void setPill_seq(int pill_seq) {
		this.pill_seq = pill_seq;
	}

	public Timestamp getReq_date() {
		return req_date;
	}

	public void setReq_date(Timestamp req_date) {
		this.req_date = req_date;
	}
	
}
