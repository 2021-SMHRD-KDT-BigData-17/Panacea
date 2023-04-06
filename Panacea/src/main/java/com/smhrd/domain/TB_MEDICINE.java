package com.smhrd.domain;

import java.math.BigDecimal;

public class TB_MEDICINE {

	private BigDecimal pill_seq;
	private String pill_name;
	private String pill_img;
	private String pill_effect;
	private String pill_shape;
	private String pill_dosage;
	private String pill_side_effect;
	
	public TB_MEDICINE(BigDecimal pill_seq, String pill_name, String pill_img, String pill_effect, String pill_shape,
			String pill_dosage, String pill_side_effect) {
		super();
		this.pill_seq = pill_seq;
		this.pill_name = pill_name;
		this.pill_img = pill_img;
		this.pill_effect = pill_effect;
		this.pill_shape = pill_shape;
		this.pill_dosage = pill_dosage;
		this.pill_side_effect = pill_side_effect;
	}

	public TB_MEDICINE(BigDecimal pill_seq) {
		super();
		this.pill_seq = pill_seq;
	}

	public BigDecimal getPill_seq() {
		return pill_seq;
	}

	public void setPill_seq(BigDecimal pill_seq) {
		this.pill_seq = pill_seq;
	}

	public String getPill_name() {
		return pill_name;
	}

	public void setPill_name(String pill_name) {
		this.pill_name = pill_name;
	}

	public String getPill_img() {
		return pill_img;
	}

	public void setPill_img(String pill_img) {
		this.pill_img = pill_img;
	}

	public String getPill_effect() {
		return pill_effect;
	}

	public void setPill_effect(String pill_effect) {
		this.pill_effect = pill_effect;
	}

	public String getPill_shape() {
		return pill_shape;
	}

	public void setPill_shape(String pill_shape) {
		this.pill_shape = pill_shape;
	}

	public String getPill_dosage() {
		return pill_dosage;
	}

	public void setPill_dosage(String pill_dosage) {
		this.pill_dosage = pill_dosage;
	}

	public String getPill_side_effect() {
		return pill_side_effect;
	}

	public void setPill_side_effect(String pill_side_effect) {
		this.pill_side_effect = pill_side_effect;
	}
	
	
}
