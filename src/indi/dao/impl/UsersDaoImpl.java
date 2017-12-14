package indi.dao.impl;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import indi.bean.Flight;
import indi.bean.Manager;
import indi.bean.Orders;
import indi.bean.Price;
import indi.bean.UserInfo;
import indi.dao.UsersDao;
import indi.utils.DataSourceUtils;

public class UsersDaoImpl implements UsersDao {

	/**
	 * 普通用户 1、登陆-- getUser 2、注册-- addUser 3、修改-- recharge
	 */

	@Override
	public UserInfo getUser(UserInfo userInfo) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "SELECT * FROM userinfo WHERE username=? AND passwd=?";
		return qr.query(sql, new BeanHandler<UserInfo>(UserInfo.class), userInfo.getUsername(), userInfo.getPasswd());
	}

	@Override
	public void addUser(UserInfo userInfo) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "INSERT INTO userinfo (ccid, username, passwd, name, phone, address) VALUES (?,?,?,?,?,?)";
		qr.insert(sql, new BeanHandler<UserInfo>(UserInfo.class), userInfo.getCcid(), userInfo.getUsername(),
				userInfo.getPasswd(), userInfo.getName(), userInfo.getPhone(), userInfo.getAddress());
	}

	@Override
	public void recharge(UserInfo userInfo) throws Exception {
		// TODO Auto-generated method stub
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
//		String sql = "REPLACE INTO userinfo(ccid, username, passwd, name, phone, address) VALUES (?,?,?,?,?,?) where uid=?";
		String sql = "update userinfo set ccid=?, username = ?, passwd =?, name=?, phone=?, address=? where uid = ?";
		userInfo.getUid();
		qr.update(sql,  userInfo.getCcid(), userInfo.getUsername(),
				userInfo.getPasswd(), userInfo.getName(), userInfo.getPhone(), userInfo.getAddress(),userInfo.getUid());

	}

	/**
	 * 管理员
	 */
	@Override
	public Manager getUser2(Manager manager) throws Exception {
		// TODO Auto-generated method stub
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "SELECT * FROM manager WHERE account=? AND passwd=?";
		return qr.query(sql, new BeanHandler<Manager>(Manager.class), manager.getAccount(), manager.getPasswd());
	}

	@Override
	public List<Orders> userOrder(UserInfo userInfo) throws Exception {
		// TODO Auto-generated method stub
		
		List<Orders> userOrderList =null;
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "SELECT * FROM orders WHERE uid=?";
		
		userOrderList = qr.query(sql, new BeanListHandler<Orders>(Orders.class),userInfo.getUid());
		
		Flight flight = null;
		for (Orders o : userOrderList) {
			flight = qr.query("SELECT * FROM flight WHERE fid=?", new BeanHandler<Flight>(Flight.class), o.getFid());
			o.setFlight(flight);
		}
		Price price = null;
		for (Orders p : userOrderList) {
			price = qr.query("SELECT * FROM price WHERE pid=?", new BeanHandler<Price>(Price.class), p.getPid());
			p.setPrice(price);
		}
		return userOrderList;
	}

	@Override
	public void cancelOrder(Orders orders) throws Exception {
		// TODO Auto-generated method stub
		
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
//		String sql = "delete from orders where oid=?";
		String sql = "update orders set status=3 where oid=?";
		qr.update(sql, orders.getOid());
	}

	@Override
	public void addOrder(Orders orders) throws Exception {
		// TODO Auto-generated method stub
		 QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
	        String sql="INSERT INTO orders ( status,  fid, pid, prices, uid, days) VALUES (?,?,?,?,?,?)";
	        qr.insert(sql,new BeanHandler<Orders>(Orders.class),orders.getStatus(),orders.getFid(),orders.getPid(),
	        		orders.getPrices(),orders.getUid(),orders.getDays());
	}

	@Override
	public void reOrder(Orders orders) throws Exception {
		// TODO Auto-generated method stub
		 QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
	        String sql="INSERT INTO orders ( status,  fid, pid, prices, uid, days) VALUES (?,?,?,?,?,?)";
	        qr.update("update orders set status = 2 where oid =?",orders.getOid());
	        qr.insert(sql,new BeanHandler<Orders>(Orders.class),orders.getStatus(),orders.getFid(),orders.getPid(),
	        		orders.getPrices(),orders.getUid(),orders.getDays());
	        
	        
	}

	@Override
	public void payOrder(Orders orders) throws Exception {
		// TODO Auto-generated method stub
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		qr.update("update orders set status = 0 where oid = ?",orders.getOid());
		
		
	}

	

}
