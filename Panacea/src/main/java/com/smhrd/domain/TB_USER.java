package com.smhrd.domain;

import java.sql.Timestamp;

public class TB_USER {
	private String user_id;
	private String user_pw;
	private String user_email;
	private String user_nick;
	private Timestamp user_joinDate;
	private String user_type;
	
	public TB_USER(String user_id, String user_pw, String user_email, String user_nick, Timestamp user_joinDate,
			String user_type) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_email = user_email;
		this.user_nick = user_nick;
		this.user_joinDate = user_joinDate;
		this.user_type = user_type;
	}

	public TB_USER(String user_id, String user_pw) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
	}

	public TB_USER(String user_id, String user_pw, String user_email, String user_nick) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_email = user_email;
		this.user_nick = user_nick;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_nick() {
		return user_nick;
	}

	public void setUser_nick(String user_nick) {
		this.user_nick = user_nick;
	}

	public Timestamp getUser_joinDate() {
		return user_joinDate;
	}

	public void setUser_joinDate(Timestamp user_joinDate) {
		this.user_joinDate = user_joinDate;
	}

	public String getUser_type() {
		return user_type;
	}

	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}

	@Override
	public String toString() {
		return "TB_USER [user_id=" + user_id + ", user_pw=" + user_pw + ", user_email=" + user_email + ", user_nick="
				+ user_nick + ", user_joinDate=" + user_joinDate + ", user_type=" + user_type + "]";
	}
	
	
}


