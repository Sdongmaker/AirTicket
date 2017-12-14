package indi.servlet;

import java.util.List;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;

import indi.bean.Airplane;
import indi.bean.Flight;
import indi.service.ManagerService;
import indi.service.impl.ManagerServiceImpl;
import indi.utils.BigDecimalConvert;

@WebServlet(name = "AirplaneServlet", urlPatterns = "/airplane")
public class AirplaneServlet extends BaseServlet {

	public String listAirplane(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ManagerService managerService = new ManagerServiceImpl();
		List<Airplane> airplaneList = managerService.listAllAirplane();
		request.setAttribute("airplaneList", airplaneList);
		request.setAttribute("airplaneListLength", airplaneList.size());
		
		return "AirPlaneManage.jsp";
	}

	public String addAirplane(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Map<String, String[]> map = request.getParameterMap();
		Airplane airplane = new Airplane();
		ConvertUtils.register(new BigDecimalConvert(), Number.class);
		BeanUtils.populate(airplane, map);

		ManagerService airplaneService = new ManagerServiceImpl();
		// 通过异常判断是否添加成功
		try {
			airplaneService.addAirplane(airplane);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "添加失败，请重试！");
			return "addAirPlane.jsp";
		}
		response.sendRedirect(request.getContextPath() + "/airPlaneManage.jsp");
		// response.sendRedirect("airplaneManager.jsp"); 重定向
		return "";
	}
	
	//删除飞机
	public String delAirplane(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int aid=Integer.parseInt(request.getParameter("aid"));
		Airplane airplane = new Airplane();
		airplane.setAid(aid);
		ManagerService airplaneService = new ManagerServiceImpl();
		airplaneService.delAirplane(airplane);
		
		response.sendRedirect(request.getContextPath() + "/airPlaneManage.jsp");
		// response.sendRedirect("airplaneManager.jsp"); 重定向
		return "";
	}

}
