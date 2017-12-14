package indi.service.impl;

import java.util.List;

import indi.bean.Airplane;
import indi.bean.Flight;
import indi.bean.Orders;
import indi.bean.UserInfo;
import indi.dao.ManagerDao;
import indi.dao.impl.ManagerDaoImpl;
import indi.service.ManagerService;

public class ManagerServiceImpl implements ManagerService {

	@Override
	public List<UserInfo> listAllUser() throws Exception {
		// TODO Auto-generated method stub
		ManagerDao managerDao = new ManagerDaoImpl();
		List<UserInfo> queryUsers = managerDao.queryUsers();
		return queryUsers;
	}

	@Override
	public List<Flight> listAllFlight() throws Exception {
		// TODO Auto-generated method stub
		ManagerDao managerDao = new ManagerDaoImpl();
		List<Flight> queryFlight = managerDao.queryFlight();
		return queryFlight;
	}

	@Override
	public List<Airplane> listAllAirplane() throws Exception {
		// TODO Auto-generated method stub
		ManagerDao managerDao = new ManagerDaoImpl();
		List<Airplane> queryAirplane = managerDao.queryAirplane();

		return queryAirplane;
	}

	@Override
	public void addAirplane(Airplane airplane) throws Exception {
		// TODO Auto-generated method stub
		ManagerDao managerDao = new ManagerDaoImpl();
		managerDao.addAirplane(airplane);

	}

	@Override
	public void addFlight(Flight flight) throws Exception {
		// TODO Auto-generated method stub
		ManagerDao managerDao = new ManagerDaoImpl();
		managerDao.addFlight(flight);
	}

	@Override
	public void updateFlight(Flight flight) throws Exception {
		// TODO Auto-generated method stub
		ManagerDao managerDao = new ManagerDaoImpl();
		managerDao.updateflight(flight);
	}

	@Override
	public void delFlight(Flight flight) throws Exception {
		// TODO Auto-generated method stub
		ManagerDao managerDao = new ManagerDaoImpl();
		managerDao.delflight(flight);
	}

	@Override
	public void delAirplane(Airplane airplane) throws Exception {
		// TODO Auto-generated method stub
		ManagerDao managerDao = new ManagerDaoImpl();
		managerDao.delAirplane(airplane);
	}

	@Override
	public List<Orders> listAllOrder() throws Exception {
		// TODO Auto-generated method stub
		ManagerDao managerDao = new ManagerDaoImpl();
		List<Orders> queryOrder = managerDao.queryOrder();
		
		return queryOrder;
	}

}
