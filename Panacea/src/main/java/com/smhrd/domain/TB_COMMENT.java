package com.smhrd.domain;

import java.sql.Timestamp;

public class TB_COMMENT {
	
	private int cmt_seq;
	private int b_seq;
	private String cmt_content;
	private Timestamp cmt_date;
	private int cmt_likes;
	private int cmt_dislikes;
	private String user_id;
	
	public TB_COMMENT() {}

	public TB_COMMENT(int cmt_seq, String cmt_content, String user_id) {
		super();
		this.cmt_seq = cmt_seq;
		this.cmt_content = cmt_content;
		this.user_id = user_id;
	}
	
	public int getCmt_seq() {
		return cmt_seq;
	}

	public void setCmt_seq(int cmt_seq) {
		this.cmt_seq = cmt_seq;
	}

	public int getB_seq() {
		return b_seq;
	}

	public void setB_seq(int b_seq) {
		this.b_seq = b_seq;
	}

	public String getCmt_content() {
		return cmt_content;
	}

	public void setCmt_content(String cmt_content) {
		this.cmt_content = cmt_content;
	}

	public Timestamp getCmt_date() {
		return cmt_date;
	}

	public void setCmt_date(Timestamp cmt_date) {
		this.cmt_date = cmt_date;
	}

	public int getCmt_likes() {
		return cmt_likes;
	}

	public void setCmt_likes(int cmt_likes) {
		this.cmt_likes = cmt_likes;
	}

	public int getCmt_dislikes() {
		return cmt_dislikes;
	}

	public void setCmt_dislikes(int cmt_dislikes) {
		this.cmt_dislikes = cmt_dislikes;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	@Override
	public String toString() {
		return "TB_COMMENT [cmt_seq=" + cmt_seq + ", b_seq=" + b_seq + ", cmt_content=" + cmt_content + ", cmt_date="
				+ cmt_date + ", cmt_likes=" + cmt_likes + ", cmt_dislikes=" + cmt_dislikes + ", user_id=" + user_id
				+ "]";
	}
	
}
