package indi.dao;

import java.util.List;

import indi.bean.Airplane;
import indi.bean.Manager;
import indi.bean.Orders;
import indi.bean.UserInfo;

public interface UsersDao {

	// 普通用户

	UserInfo getUser(UserInfo userInfo) throws Exception;

	void addUser(UserInfo userInfo) throws Exception;

	void recharge(UserInfo userInfo) throws Exception;

	List<Orders> userOrder(UserInfo userInfo) throws Exception;
	
	public void cancelOrder(Orders orders) throws Exception;
	
	void addOrder(Orders orders) throws Exception;
	
	void reOrder(Orders orders) throws Exception;
	
	void payOrder(Orders orders) throws Exception;

	// 管理员
	Manager getUser2(Manager manager) throws Exception;

}
