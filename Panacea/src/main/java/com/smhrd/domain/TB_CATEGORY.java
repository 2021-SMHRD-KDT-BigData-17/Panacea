package com.smhrd.domain;

public class TB_CATEGORY {
	
	private String category_seq;
	private String category_nm;
	
	public TB_CATEGORY(String category_seq, String category_nm) {
		super();
		this.category_seq = category_seq;
		this.category_nm = category_nm;
	}

	public String getCategory_seq() {
		return category_seq;
	}

	public void setCategory_seq(String category_seq) {
		this.category_seq = category_seq;
	}

	public String getCategory_nm() {
		return category_nm;
	}

	public void setCategory_nm(String category_nm) {
		this.category_nm = category_nm;
	}
	
	
}
