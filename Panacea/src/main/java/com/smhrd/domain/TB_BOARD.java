package com.smhrd.domain;

import java.sql.Timestamp;

public class TB_BOARD {
	private int b_seq;
	private String b_title;
	private String b_content;
	private String b_file;
	private int b_views;
	private int b_likes;
	private Timestamp b_date;
	
	public TB_BOARD(int b_seq, String b_title, String b_content, String b_file, int b_views, int b_likes,
			Timestamp b_date) {
		super();
		this.b_seq = b_seq;
		this.b_title = b_title;
		this.b_content = b_content;
		this.b_file = b_file;
		this.b_views = b_views;
		this.b_likes = b_likes;
		this.b_date = b_date;
	}

	public int getB_seq() {
		return b_seq;
	}

	public void setB_seq(int b_seq) {
		this.b_seq = b_seq;
	}

	public String getB_title() {
		return b_title;
	}

	public void setB_title(String b_title) {
		this.b_title = b_title;
	}

	public String getB_content() {
		return b_content;
	}

	public void setB_content(String b_content) {
		this.b_content = b_content;
	}

	public String getB_file() {
		return b_file;
	}

	public void setB_file(String b_file) {
		this.b_file = b_file;
	}

	public int getB_views() {
		return b_views;
	}

	public void setB_views(int b_views) {
		this.b_views = b_views;
	}

	public int getB_likes() {
		return b_likes;
	}

	public void setB_likes(int b_likes) {
		this.b_likes = b_likes;
	}

	public Timestamp getB_date() {
		return b_date;
	}

	public void setB_date(Timestamp b_date) {
		this.b_date = b_date;
	}

	@Override
	public String toString() {
		return "TB_BOARD [b_seq=" + b_seq + ", b_title=" + b_title + ", b_content=" + b_content + ", b_file=" + b_file
				+ ", b_views=" + b_views + ", b_likes=" + b_likes + ", b_date=" + b_date + "]";
	}
	
	
}
