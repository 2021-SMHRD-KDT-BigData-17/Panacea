package com.smhrd.domain;

public class TB_COMMENT {
	
	private int cmt_seq;
	private String cmt_content;
	private String cmt_date;
	private String cmt_likes;
	private String cmt_dislikes;
	
	public TB_COMMENT(int cmt_seq, String cmt_content, String cmt_date, String cmt_likes, String cmt_dislikes) {
		super();
		this.cmt_seq = cmt_seq;
		this.cmt_content = cmt_content;
		this.cmt_date = cmt_date;
		this.cmt_likes = cmt_likes;
		this.cmt_dislikes = cmt_dislikes;
	}

	public int getCmt_seq() {
		return cmt_seq;
	}

	public void setCmt_seq(int cmt_seq) {
		this.cmt_seq = cmt_seq;
	}

	public String getCmt_content() {
		return cmt_content;
	}

	public void setCmt_content(String cmt_content) {
		this.cmt_content = cmt_content;
	}

	public String getCmt_date() {
		return cmt_date;
	}

	public void setCmt_date(String cmt_date) {
		this.cmt_date = cmt_date;
	}

	public String getCmt_likes() {
		return cmt_likes;
	}

	public void setCmt_likes(String cmt_likes) {
		this.cmt_likes = cmt_likes;
	}

	public String getCmt_dislikes() {
		return cmt_dislikes;
	}

	public void setCmt_dislikes(String cmt_dislikes) {
		this.cmt_dislikes = cmt_dislikes;
	}
	
	
	
}
