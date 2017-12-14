package indi.servlet;

import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import indi.bean.Manager;
import indi.service.ManagerService;
import indi.service.impl.ManagerServiceImpl;

@WebServlet(name = "ManagerServlet", urlPatterns = "/manager")
public class ManagerServlet extends BaseServlet {
	
}
