package com.freeze.mybatis.vo;

import lombok.Data;

@Data
public class CalcPriceEntity {
	private String price_index;
	private String panel;
	private String overlap;
	private String base;
	private String sub;
	private String copper_pipe;
	private String overlap_01;
	private String overlap_02;
	private String slide_one_01;
	private String slide_one_02;
	private String slide_two_01;
	private String slide_two_02;
	private String man_day;
	
	public String getPrice_index() {
		return price_index;
	}
	public void setPrice_index(String price_index) {
		this.price_index = price_index;
	}
	public String getPanel() {
		return panel;
	}
	public void setPanel(String panel) {
		this.panel = panel;
	}
	public String getOverlap() {
		return overlap;
	}
	public void setOverlap(String overlap) {
		this.overlap = overlap;
	}
	public String getBase() {
		return base;
	}
	public void setBase(String base) {
		this.base = base;
	}
	public String getSub() {
		return sub;
	}
	public void setSub(String sub) {
		this.sub = sub;
	}
	public String getCopper_pipe() {
		return copper_pipe;
	}
	public void setCopper_pipe(String copper_pipe) {
		this.copper_pipe = copper_pipe;
	}
	public String getOverlap_01() {
		return overlap_01;
	}
	public void setOverlap_01(String overlap_01) {
		this.overlap_01 = overlap_01;
	}
	public String getOverlap_02() {
		return overlap_02;
	}
	public void setOverlap_02(String overlap_02) {
		this.overlap_02 = overlap_02;
	}
	public String getSlide_one_01() {
		return slide_one_01;
	}
	public void setSlide_one_01(String slide_one_01) {
		this.slide_one_01 = slide_one_01;
	}
	public String getSlide_one_02() {
		return slide_one_02;
	}
	public void setSlide_one_02(String slide_one_02) {
		this.slide_one_02 = slide_one_02;
	}
	public String getSlide_two_01() {
		return slide_two_01;
	}
	public void setSlide_two_01(String slide_two_01) {
		this.slide_two_01 = slide_two_01;
	}
	public String getSlide_two_02() {
		return slide_two_02;
	}
	public void setSlide_two_02(String slide_two_02) {
		this.slide_two_02 = slide_two_02;
	}
	public String getMan_day() {
		return man_day;
	}
	public void setMan_day(String man_day) {
		this.man_day = man_day;
	}
}
