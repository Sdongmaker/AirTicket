package indi.servlet;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import indi.bean.Manager;
import indi.bean.UserInfo;

/**
 * 转发逻辑需要修改
 * 
 * @author ZengGUI
 *
 */

public class BaseServlet extends HttpServlet {
	
	public void isLogin(HttpServletRequest request, HttpServletResponse response, boolean login)throws ServletException, IOException{
		if(login == false)
			return;
		HttpSession userSession = request.getSession();
		UserInfo userInfo = (UserInfo) userSession.getAttribute("userInfo");
		Manager manager = (Manager) userSession.getAttribute("userInfo");
		if(userInfo==null || manager==null){
			response.sendRedirect("login.jsp"); //重定向

			return ;
		}
	}

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
//		isLogin(request,response,true);
		
		try {
			request.setCharacterEncoding("utf-8");
			String methodName = request.getParameter("method");
			
			Class<? extends BaseServlet> classz = this.getClass();
			
			if (methodName.isEmpty()) {
				methodName = "index";
			}
			System.out.println(methodName);
			Method method = classz.getMethod(methodName, HttpServletRequest.class, HttpServletResponse.class);
			// 调用类中的方法，用法就是可以把方法参数化
			String dispatcherPatch = (String) method.invoke(this, request, response);
			
			if (!dispatcherPatch.isEmpty()) {
				request.getRequestDispatcher(dispatcherPatch).forward(request, response);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
