package indi.dao;

import java.util.List;

import indi.bean.Airplane;
import indi.bean.Flight;
import indi.bean.Orders;
import indi.bean.UserInfo;

public interface ManagerDao {

	public List<UserInfo> queryUsers() throws Exception;

	public List<Airplane> queryAirplane() throws Exception;

	public List<Flight> queryFlight() throws Exception;
	
	public List<Orders> queryOrder() throws Exception;

	public void addAirplane(Airplane airplane) throws Exception;

	public void delAirplane(Airplane airplane) throws Exception;

	public void addFlight(Flight flight) throws Exception;

	public void updateflight(Flight flight) throws Exception;

	public void delflight(Flight flight) throws Exception;
}
