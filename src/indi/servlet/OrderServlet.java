package indi.servlet;

import java.util.List;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;

import indi.bean.Flight;
import indi.bean.Manager;
import indi.bean.Orders;
import indi.bean.Price;
import indi.bean.UserInfo;
import indi.service.FlightService;
import indi.service.ManagerService;
import indi.service.PriceService;
import indi.service.UserService;
import indi.service.impl.FlightServiceImpl;
import indi.service.impl.ManagerServiceImpl;
import indi.service.impl.PriceServiceImpl;
import indi.service.impl.UserServiceImpl;
import indi.utils.BigDecimalConvert;

@WebServlet(name = "OrderServlet", urlPatterns = "/order")
public class OrderServlet extends BaseServlet {

	public String listAllOrder(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ManagerService managerService = new ManagerServiceImpl();
		List<Orders> orderList = managerService.listAllOrder();

		request.setAttribute("orderList", orderList);
		request.setAttribute("orderListLength", orderList.size());
		return "orderManage.jsp";// 转发
	}

	public String userOrder(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession userSession = request.getSession();
		UserInfo userInfo = (UserInfo) userSession.getAttribute("userInfo");

		List<Orders> userOrderList = null;

		UserService userService = new UserServiceImpl();
		userOrderList = userService.userOrder(userInfo);

		request.setAttribute("userOrderList", userOrderList);
		request.setAttribute("userOrderListLength", userOrderList.size());
		return "order.jsp";// 转发
	}

	// 取消订单
	public String cancelOrder(HttpServletRequest request, HttpServletResponse response) throws Exception {

		Manager manager = (Manager) request.getSession().getAttribute("manager");

		int oid = Integer.parseInt(request.getParameter("oid"));
		int id = Integer.parseInt(request.getParameter("id"));
		Orders orders = new Orders();
		orders.setOid(oid);

		UserService userService = new UserServiceImpl();
		userService.cancelOrder(orders);
		if (id == 0 && manager != null) {
			response.sendRedirect(request.getContextPath() + "/orderManage.jsp");
		} else {
			response.sendRedirect(request.getContextPath() + "/order.jsp");
		}
		return "";// 转发地址
	}

	public String addOrder(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Map<String, String[]> map = request.getParameterMap();
		Orders order = new Orders();
		ConvertUtils.register(new BigDecimalConvert(), Number.class);
		BeanUtils.populate(order, map);

		UserInfo userInfo = (UserInfo) request.getSession().getAttribute("userInfo");

		UserService orderService = new UserServiceImpl();
		order.setUid(userInfo.getUid());
		order.setStatus(1);
		System.out.println(order);
		orderService.addOrder(order);
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().print(200);
		return "";
	}
	
	public String payOrder(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int oid=Integer.parseInt(request.getParameter("oid"));
		
		Orders order = new Orders();
		order.setOid(oid);
		UserService userService = new UserServiceImpl();
		userService.payOrder(order);
		
		return"order?method=userOrder";
	}

	// 改签-1、查询后返回航班  2、改签航班
	public String reOrder(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String method = request.getMethod();
		if (method.equals("GET")) {
			System.out.print(method);
			int oid = Integer.parseInt(request.getParameter("oid"));
			String days = request.getParameter("days");
			//查询fid
			FlightService flightService = new FlightServiceImpl();
			List<Flight> flights = flightService.regetFlights(oid);
			
			
			/*FlightService flightService = new FlightServiceImpl();
			List<Flight> flights = flightService.getFlights(flight);*/
			PriceService priceService = new PriceServiceImpl();
			List<Price> allPrices = priceService.getAllPrices();
			request.setAttribute("days", days);
			request.setAttribute("flight", flights);
			
			return "reOrder.jsp";
			
		} else {
			Map<String, String[]> map = request.getParameterMap();
//			System.out.print(request.getParameter("oid"));
			
			Orders order = new Orders();
			ConvertUtils.register(new BigDecimalConvert(), Number.class);
			BeanUtils.populate(order, map);

			UserInfo userInfo = (UserInfo) request.getSession().getAttribute("userInfo");

			UserService orderService = new UserServiceImpl();
			order.setUid(userInfo.getUid());
			order.setStatus(4);
			
			System.out.println(order);
			
			orderService.reOrder(order);
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().print(200);
			return "";
		}

	}

}
