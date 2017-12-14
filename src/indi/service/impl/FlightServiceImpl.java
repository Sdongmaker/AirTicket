package indi.service.impl;

import java.util.List;

import indi.bean.Flight;
import indi.bean.Orders;
import indi.dao.impl.FlightsDaoImpl;
import indi.service.FlightService;

public class FlightServiceImpl implements FlightService{

	@Override
	public List<Flight> getFlights(Flight filght) throws Exception {
		// TODO Auto-generated method stub
		 return new FlightsDaoImpl().getFlights(filght);
	}

	@Override
	public List<Flight> regetFlights(int oid) throws Exception {
		// TODO Auto-generated method stub
		return new FlightsDaoImpl().regetFlights(oid);
	}

	

	

}
