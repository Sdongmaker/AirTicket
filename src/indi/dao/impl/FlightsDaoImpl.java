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
import indi.dao.FlightsDao;
import indi.utils.DataSourceUtils;

public class FlightsDaoImpl implements FlightsDao{
	

	@Override
	public List<Flight> getFlights(Flight flight) throws Exception {
		// TODO Auto-generated method stub
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "SELECT * FROM flight WHERE start_point=? AND end_point=?";
		List<Flight> list = qr.query(sql, new BeanListHandler<Flight>(Flight.class), flight.getStart_point(),flight.getEnd_point());
		
		List<Price> priceList = qr.query("select * from price", new BeanListHandler<Price>(Price.class));
		Airplane airplane=null;
		for (Flight f : list) {
			sql = "SELECT * FROM airplane WHERE aid=?";
			airplane= qr.query(sql, new BeanHandler<Airplane>(Airplane.class), f.getAid());
			airplane.setPrice(priceList);
			f.setAirplane(airplane);
		}
		return list;  
	}

	@Override
	public List<Flight> regetFlights(int  oid) throws Exception {
		// TODO Auto-generated method stub
		
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "SELECT start_point,end_point FROM flight WHERE fid=(select fid from orders where oid=?)";
		
		return getFlights(qr.query(sql, new BeanHandler<Flight>(Flight.class), oid));
		
//		return qr.query(sql, new BeanHandler<Flight>(Flight.class), orders.getOid());
		
	}

	
	

}
