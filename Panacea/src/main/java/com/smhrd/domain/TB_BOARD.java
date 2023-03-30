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
	private String user_id;
	private int category_seq;
	
	public TB_BOARD(int b_seq, String b_title, String b_content, String b_file, int b_views, int b_likes,
			Timestamp b_date, String user_id, int category_seq) {
		super();
		this.b_seq = b_seq;
		this.b_title = b_title;
		this.b_content = b_content;
		this.b_file = b_file;
		this.b_views = b_views;
		this.b_likes = b_likes;
		this.b_date = b_date;
		this.user_id = user_id;
		this.category_seq = category_seq;
	}

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

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getCategory_seq() {
		return category_seq;
	}

	public void setCategory_seq(int category_seq) {
		this.category_seq = category_seq;
	}
	
	
}
