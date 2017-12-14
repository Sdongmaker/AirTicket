package indi.bean;

import java.math.BigDecimal;

public class Price {
	private int pid;		//编号
	private String type;	//舱位
	private int base;		//舱位基础价格
	private BigDecimal rate;	//舱位系数
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getBase() {
		return base;
	}
	public void setBase(int base) {
		this.base = base;
	}
	public Number getRate() {
		return rate;
	}
	public void setRate(BigDecimal rate) {
		this.rate = rate;
	}
	
}
