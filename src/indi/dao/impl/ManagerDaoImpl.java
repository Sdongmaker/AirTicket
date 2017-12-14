package indi.dao.impl;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import indi.bean.Airplane;
import indi.bean.Flight;
import indi.bean.Orders;
import indi.bean.Price;
import indi.bean.UserInfo;
import indi.dao.ManagerDao;
import indi.utils.DataSourceUtils;

public class ManagerDaoImpl implements ManagerDao {

	@Override
	public List<UserInfo> queryUsers() throws Exception {
		// TODO Auto-generated method stub

		List<UserInfo> users = null;
		String sql = "select * from UserInfo";
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());

		users = qr.query(sql, new BeanListHandler<UserInfo>(UserInfo.class));

		return users;
	}

	@Override
	public List<Airplane> queryAirplane() throws Exception {
		// TODO Auto-generated method stub
		List<Airplane> airplaneList = null;
		String sql = "select * from airplane";
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());

		airplaneList = qr.query(sql, new BeanListHandler<Airplane>(Airplane.class));

		return airplaneList;
	}

	@Override
	public List<Flight> queryFlight() throws Exception {
		// TODO Auto-generated method stub
		List<Flight> flightsList = null;
		String sql = "select * from flight";
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		Airplane airplane = null;

		flightsList = qr.query(sql, new BeanListHandler<Flight>(Flight.class));

		for (Flight f : flightsList) {
			sql = "SELECT * FROM airplane WHERE aid=?";
			airplane = qr.query(sql, new BeanHandler<Airplane>(Airplane.class), f.getAid());
			f.setAirplane(airplane);
		}

		return flightsList;
	}

	@Override
	public void addAirplane(Airplane airplane) throws Exception {
		// TODO Auto-generated method stub
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "INSERT INTO Airplane (aname, arate, f_class_cnt, b_class_cnt, e_class_cnt) VALUES (?,?,?,?,?)";
		qr.insert(sql, new BeanHandler<Airplane>(Airplane.class), airplane.getAname(),airplane.getArate(),
				airplane.getF_class_cnt(),airplane.getB_class_cnt(),airplane.getE_class_cnt());
	}

	@Override
	public void addFlight(Flight flight) throws Exception {
		// TODO Auto-generated method stub
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "INSERT INTO flight(aid,start_point,end_point,start_time,end_time,distance)  VALUES (?,?,?,?,?,?)";
		qr.insert(sql, new BeanHandler<Flight>(Flight.class), flight.getAid(),flight.getStart_point(),flight.getEnd_point(),flight.getStart_time(),flight.getEnd_time(),flight.getDistance());
	}

	@Override
	public void updateflight(Flight flight) throws Exception {
		
		// TODO Auto-generated method stub
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "update  flight set aid= ?, start_time=?, end_time=?, distance=? where fid = ? ";
		qr.update(sql, flight.getAid(),flight.getStart_time(),flight.getEnd_time(),flight.getDistance(),flight.getFid());
	}

	@Override
	public void delflight(Flight flight) throws Exception {
		// TODO Auto-generated method stub
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "delete from flight where fid=?";
		qr.update(sql, flight.getFid());
		
		
	}

	@Override
	public void delAirplane(Airplane airplane) throws Exception {
		// TODO Auto-generated method stub
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "delete from airplane where aid=?";
		qr.update(sql, airplane.getAid());
	}

	@Override
	public List<Orders> queryOrder() throws Exception {
		// TODO Auto-generated method stub
	
		List<Orders> orderList = null;
		String sql = "select * from orders";
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		
		orderList = qr.query(sql, new BeanListHandler<Orders>(Orders.class));
		Flight flight =null;
		for (Orders o : orderList) {
			flight = qr.query("SELECT * FROM flight WHERE fid=?", new BeanHandler<Flight>(Flight.class), o.getFid());
			o.setFlight(flight);
		}
		Price price = null;
		for (Orders p : orderList) {
			price = qr.query("SELECT * FROM price WHERE pid=?", new BeanHandler<Price>(Price.class), p.getPid());
			p.setPrice(price);
		}
		
		UserInfo userInfo=null;
		for (Orders u : orderList) {
			userInfo = qr.query("SELECT * FROM UserInfo WHERE uid=?", new BeanHandler<UserInfo>(UserInfo.class), u.getUid());
			u.setUserInfo(userInfo);
		}
		
		return orderList;
		
	}

}
