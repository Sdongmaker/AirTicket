package indi.dao;

import java.util.List;

import indi.bean.Flight;
import indi.bean.Orders;
import indi.bean.UserInfo;

//航班信息
public interface FlightsDao {
	
	List<Flight> getFlights(Flight flight) throws Exception;
	
	
	List<Flight> regetFlights(int oid) throws Exception;
	
}
