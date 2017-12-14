package indi.service.impl;

import java.util.List;

import indi.bean.Manager;
import indi.bean.Orders;
import indi.bean.UserInfo;
import indi.dao.UsersDao;
import indi.dao.impl.UsersDaoImpl;
import indi.service.UserService;

public class UserServiceImpl implements UserService {

	@Override
	public void addUser(UserInfo userInfo) throws Exception {
		// TODO Auto-generated method stub
		UsersDao usersDao = new UsersDaoImpl();
		usersDao.addUser(userInfo);
	}

	@Override
	public UserInfo getUser(UserInfo userInfo) throws Exception {
		// TODO Auto-generated method stub
		return new UsersDaoImpl().getUser(userInfo);
	}

	@Override
	public void recharge(UserInfo userInfo) throws Exception {
		// TODO Auto-generated method stub
		UsersDao usersDao = new UsersDaoImpl();
		usersDao.recharge(userInfo);
	}

	@Override
	public Manager getUser2(Manager manager) throws Exception {
		// TODO Auto-generated method stub
		return new UsersDaoImpl().getUser2(manager);
	}


	@Override
	public List<Orders> userOrder(UserInfo userInfo) throws Exception {
		// TODO Auto-generated method stub
		return new UsersDaoImpl().userOrder(userInfo);
	}

	@Override
	public void cancelOrder(Orders orders) throws Exception {
		// TODO Auto-generated method stub
		UsersDao userDao = new UsersDaoImpl();
		userDao.cancelOrder(orders);
	}

	@Override
	public void addOrder(Orders orders) throws Exception {
		// TODO Auto-generated method stub
		UsersDao userDao = new UsersDaoImpl();
		userDao.addOrder(orders);
	}
	public void reOrder(Orders orders) throws Exception {
		UsersDao userDao = new UsersDaoImpl();
		userDao.reOrder(orders);
	}

	@Override
	public void payOrder(Orders orders) throws Exception {
		// TODO Auto-generated method stub
		UsersDao userDao = new UsersDaoImpl();
		userDao.payOrder(orders);
	}
	

}
