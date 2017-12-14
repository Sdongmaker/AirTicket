package indi.servlet;

import java.util.Date;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;

import indi.bean.Manager;
import indi.bean.UserInfo;
import indi.service.ManagerService;
import indi.service.UserService;
import indi.service.impl.ManagerServiceImpl;
import indi.service.impl.UserServiceImpl;
import indi.utils.DataConvert;

@WebServlet(name = "UserServlet", urlPatterns = "/user")
public class UserServlet extends BaseServlet {

	// 注册
	public String register(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 使用map接收前台传入的所有参数
		Map<String, String[]> map = request.getParameterMap();
		// 注册时间转换器（前台日期是string类型，BeanUtils无法直接封装，需要转换）
		ConvertUtils.register(new DataConvert(), Date.class);
		UserInfo userInfo = new UserInfo();
		// 使用BeanUtils的populate把接收的map封装到userinfo对象中
		BeanUtils.populate(userInfo, map);
		UserService userService = new UserServiceImpl();
		// 通过异常判断是否添加成功
		try {
			userService.addUser(userInfo);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "注册失败，请重试！");
			return "register.jsp";
		}
		response.sendRedirect(request.getContextPath() + "/login.jsp");
		// response.sendRedirect(); 重定向
		return "";
	}

	public String loginUI(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return "login.jsp";
	}

	// 普通用户登陆
	public String login(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Map<String, String[]> map = request.getParameterMap();
		UserInfo userInfo = new UserInfo();
		BeanUtils.populate(userInfo, map);
		UserService usersService = new UserServiceImpl();
		UserInfo user = usersService.getUser(userInfo);

		if (user != null) {
			request.getSession().setAttribute("userInfo", user);
			response.sendRedirect(request.getContextPath() + "/user.jsp");
			return "";
		}
		request.setAttribute("error", "用户或密码不正确！");
		return "login.jsp";
	}
	//更新用户
	public String updateUser(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Map<String, String[]> map = request.getParameterMap();
		UserInfo userInfo = new UserInfo();
		BeanUtils.populate(userInfo, map);
		UserService userService = new UserServiceImpl();
		try {
			userService.recharge(userInfo);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "修改失败，请重试！");
			return "updateUser.jsp";
		}
		request.getSession().invalidate();
		request.setAttribute("success", "修改成功！");
		request.getSession().setAttribute("userInfo", userInfo);
		
		response.sendRedirect(request.getContextPath() + "/updateUser.jsp");
		return "";
	}

	// 管理员登陆
	public String login2(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Map<String, String[]> map = request.getParameterMap();

		Manager managerForm = new Manager();
		BeanUtils.populate(managerForm, map);
		UserService usersService = new UserServiceImpl();
		Manager manager = usersService.getUser2(managerForm);

		if (manager != null) {
			request.getSession().setAttribute("manager", manager);
			response.sendRedirect(request.getContextPath() + "/manager.jsp");
			return "";
		}
		request.setAttribute("error", "用户或密码不正确！");
		return "login2.jsp";
	}

	// 退出
	public String signOut(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.getSession().invalidate();
		response.sendRedirect(request.getContextPath() + "/index.jsp");
		return "";
	}
}
