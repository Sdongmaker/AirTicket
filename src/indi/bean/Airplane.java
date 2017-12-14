package indi.bean;

import java.math.BigDecimal;
import java.util.List;

//飞机
public class Airplane {
	private int aid;			// 编号
	private String aname;		// 飞机名称
	private BigDecimal arate;		//飞机系数
	private int f_class_cnt;	// 头等舱数量
	private int b_class_cnt;	// 公务舱数量
	private int e_class_cnt;	// 经济舱数量
	
	private List<Price> price;		//舱位价格	


	public List<Price> getPrice() {
		return price;
	}
	public void setPrice(List<Price> price) {
		this.price = price;
	}
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public Number getArate() {
		return arate;
	}
	public void setArate(BigDecimal arate) {
		this.arate = arate;
	}
	public int getF_class_cnt() {
		return f_class_cnt;
	}
	public void setF_class_cnt(int f_class_cnt) {
		this.f_class_cnt = f_class_cnt;
	}
	public int getB_class_cnt() {
		return b_class_cnt;
	}
	public void setB_class_cnt(int b_class_cnt) {
		this.b_class_cnt = b_class_cnt;
	}
	public int getE_class_cnt() {
		return e_class_cnt;
	}
	public void setE_class_cnt(int e_class_cnt) {
		this.e_class_cnt = e_class_cnt;
	}
	

	
}
