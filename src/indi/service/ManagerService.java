package indi.service;

import java.util.List;

import indi.bean.Airplane;
import indi.bean.Flight;
import indi.bean.Orders;
import indi.bean.UserInfo;

public interface ManagerService {

	// 获取所有航班
	public List<Flight> listAllFlight() throws Exception;

	// 获取所有飞机
	public List<Airplane> listAllAirplane() throws Exception;

	// 获取所有普通用户
	public List<UserInfo> listAllUser() throws Exception;
	
	// 获取所有订单
	public List<Orders> listAllOrder() throws Exception;
	
	

	// 添加飞机
	public void addAirplane(Airplane airplane) throws Exception;

	// 删除飞机
	public void delAirplane(Airplane airplane) throws Exception;

	// 添加航线
	public void addFlight(Flight flight) throws Exception;

	// 更新航班
	public void updateFlight(Flight flight) throws Exception;

	// 删除航班
	public void delFlight(Flight flight) throws Exception;

	
}
