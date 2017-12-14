package indi.bean;


public class Orders {
	private int oid;			//订单编号
	private int status;			//订单状态（0-成功，1-待付款，2-改签，3-取消）
	private int fid;			//航班编号
	private int pid;			//价格表-舱位编号（头等舱）
	private Number prices;		//价格
	private int uid;			//用户编号
	private String days;		//航班日期
	
	public String getDays() {
		return days;
	}
	public void setDays(String days) {
		this.days = days;
	}
	private UserInfo userInfo;
	private Price price;
	private Flight flight;
	
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public Number getPrices() {
		return prices;
	}
	public void setPrices(Number prices) {
		this.prices = prices;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public UserInfo getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}
	public Price getPrice() {
		return price;
	}
	public void setPrice(Price price) {
		this.price = price;
	}
	public Flight getFlight() {
		return flight;
	}
	public void setFlight(Flight flight) {
		this.flight = flight;
	}
	
}
