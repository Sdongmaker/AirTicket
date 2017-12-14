package indi.service;

import java.util.List;

import indi.bean.Flight;
import indi.bean.Orders;

public interface FlightService {
	//获取航班信息
	List<Flight> getFlights(Flight filght) throws Exception;
	//获取指定航班
	List<Flight> regetFlights(int oid) throws Exception;

	

}
