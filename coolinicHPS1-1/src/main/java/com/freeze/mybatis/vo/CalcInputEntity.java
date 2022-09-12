package com.freeze.mybatis.vo;

import lombok.Data;

@Data
public class CalcInputEntity {
	private String widVal = null;
	public String getWidVal() {
		return widVal;
	}
	public void setWidVal(String widVal) {
		this.widVal = widVal;
	}
	public String getVertVal() {
		return vertVal;
	}
	public void setVertVal(String vertVal) {
		this.vertVal = vertVal;
	}
	public String getHegVal() {
		return hegVal;
	}
	public void setHegVal(String hegVal) {
		this.hegVal = hegVal;
	}
	public String getStoreVal() {
		return storeVal;
	}
	public void setStoreVal(String storeVal) {
		this.storeVal = storeVal;
	}
	public String getTempVal() {
		return tempVal;
	}
	public void setTempVal(String tempVal) {
		this.tempVal = tempVal;
	}
	public String getMtypeVal() {
		return mtypeVal;
	}
	public void setMtypeVal(String mtypeVal) {
		this.mtypeVal = mtypeVal;
	}
	public String getMsizeVal() {
		return msizeVal;
	}
	public void setMsizeVal(String msizeVal) {
		this.msizeVal = msizeVal;
	}
	public String getPurcheseVal() {
		return purcheseVal;
	}
	public void setPurcheseVal(String purcheseVal) {
		this.purcheseVal = purcheseVal;
	}
	private String vertVal = null;
	private String hegVal = null;
	private String storeVal = null;
	private String tempVal = null;
	private String mtypeVal = null;
	private String msizeVal = null;
	private String purcheseVal = null;
}
