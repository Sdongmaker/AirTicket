package indi.servlet;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;

import indi.bean.Airplane;
import indi.bean.Flight;
import indi.bean.Price;
import indi.service.FlightService;
import indi.service.ManagerService;
import indi.service.PriceService;
import indi.service.impl.FlightServiceImpl;
import indi.service.impl.ManagerServiceImpl;
import indi.service.impl.PriceServiceImpl;
import indi.utils.BigDecimalConvert;
import indi.utils.DataConvert;
import indi.utils.TimeConvert;

@WebServlet(name = "FlightServlet", urlPatterns = "/flights")
public class FlightServlet extends BaseServlet {

	// 查询航班信息
	public String getFlights(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String days = request.getParameter("days");
		Map<String, String[]> map = request.getParameterMap();
		// ConvertUtils.register(new TimeConvert(), java.sql.Time.class);

		Flight flight = new Flight();
		BeanUtils.populate(flight, map);
		FlightService flightService = new FlightServiceImpl();
		List<Flight> flights = flightService.getFlights(flight);
		PriceService priceService = new PriceServiceImpl();
		List<Price> allPrices = priceService.getAllPrices();

		request.setAttribute("flight", flights);
		request.setAttribute("flightLength", flights.size());
		request.setAttribute("days", days);
		return "queryFlight.jsp";// 转发
	}

	//改签查询
	public String regetFlights(HttpServletRequest request, HttpServletResponse response) throws Exception {

		Map<String, String[]> map = request.getParameterMap();
		// ConvertUtils.register(new TimeConvert(), java.sql.Time.class);

		Flight flight = new Flight();
		BeanUtils.populate(flight, map);
		FlightService flightService = new FlightServiceImpl();
		List<Flight> flights = flightService.getFlights(flight);
		PriceService priceService = new PriceServiceImpl();
		List<Price> allPrices = priceService.getAllPrices();

		request.setAttribute("flight", flights);
		return "reOrder.jsp";// 转发
	}

	// 查询所有航班
	public String getAllFlight(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ManagerService managerService = new ManagerServiceImpl();
		List<Flight> flightList = managerService.listAllFlight();
		request.setAttribute("flightList", flightList);
		// request.setAttribute("flightListLength", flightList.size());
		return "flightManage.jsp";// 转发
	}

	// 新增航班
	public String addFlight(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Map<String, String[]> map = request.getParameterMap();
		// ConvertUtils.register(new TimeConvert(), java.sql.Time.class);
		Flight flight = new Flight();
		BeanUtils.populate(flight, map);

		ManagerService flightService = new ManagerServiceImpl();
		// 通过异常判断是否添加成功
		try {
			flightService.addFlight(flight);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "添加失败，请重试！");
			return "addAirPlane.jsp";
		}
		response.sendRedirect(request.getContextPath() + "/flightManage.jsp");
		// response.sendRedirect("airplaneManager.jsp"); 重定向

		return "";
	}

	// 更新航班
	public String updateFlight(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Map<String, String[]> map = request.getParameterMap();
		Flight flight = new Flight();
		BeanUtils.populate(flight, map);

		ManagerService flightService = new ManagerServiceImpl();

		try {
			flightService.updateFlight(flight);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "修改失败，请重试！");
			return "updateUser.jsp";
		}

		response.sendRedirect(request.getContextPath() + "/flightManage.jsp");
		return "";
	}

	// 删除航班
	public String delFlight(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int fid = Integer.parseInt(request.getParameter("fid"));
		Flight flight = new Flight();
		flight.setFid(fid);
		ManagerService flightService = new ManagerServiceImpl();
		flightService.delFlight(flight);

		response.sendRedirect(request.getContextPath() + "/flightManage.jsp");
		return "";
	}

}
