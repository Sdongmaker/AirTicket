<%@page import="indi.bean.Manager"%>
<%@page import="indi.bean.Orders"%>
<%@page import="indi.service.ManagerService"%>
<%@page import="indi.service.impl.ManagerServiceImpl"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	Manager manager = (Manager) session.getAttribute("manager");
	if (manager == null) {
		response.sendRedirect(request.getContextPath() + "/login2.jsp");
	}

	ManagerService managerService = new ManagerServiceImpl();

	List<Orders> orderList = managerService.listAllOrder();
	request.setAttribute("orderList", orderList);
	request.setAttribute("orderListLength", orderList.size());
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<meta name="description" content="">
<meta name="author" content="">
<title>机票预订系统控制台</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/dashboard.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand"
				href="${pageContext.request.contextPath}/manager.jsp">机票预订系统控制台</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				 <li><a href="${pageContext.request.contextPath}/user?method=signOut">退出</a></li>
			</ul>
		</div>
	</div>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				<ul class="nav nav-sidebar">
					<li><a href="manager.jsp">概况</a></li>
					<li><a href="userManage.jsp">用户管理</a></li>
					<li><a href="flightManage.jsp">航班管理 </a></li>
					<li><a href="airPlaneManage.jsp">班机管理</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li class="active"><a href="#">订单管理<span class="sr-only">(current)</span></a></li>
					
				</ul>
			</div>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<%-- <c:if test="${sessionScope.orderManageMsg!=null}">
			<div class="alert alert-info" role="alert">
				${orderManageMsg}
				${sessionScope.orderManageMsg=null}
			</div>
			</c:if> --%>
				<h2 class="sub-header">当前共有${orderListLength}条订单信息</h2>
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>订单编号</th>
								<th>班机型号</th>
								<th>用户姓名</th>
								<th>出发地</th>
								<th>目的地</th>
								<th>价格</th>
								<th>航班日期</th>
								<th>起飞时间</th>
								<th>订单状态</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="o" items="${orderList}">
								<tr>
									<td><c:out value="${o.oid}" /></td>
									<td><c:out value="${o.flight.aid}" /></td>
									<td><c:out value="${o.userInfo.name}" /></td>
									<td><c:out value="${o.flight.start_point}" /></td>
									<td><c:out value="${o.flight.end_point}" /></td>
									<td><c:out value="${o.prices}" /></td>
									<td><c:out value="${o.days}" /></td>
									<td><c:out value="${o.flight.start_time}" /></td>
									<c:choose>
										<c:when test="${o.status==0}">
											<td>已支付</td>
											<td><button type="button" class="btn btn-xs btn-danger"
													onclick="javascript:window.location.href='${pageContext.request.contextPath}/order?method=cancelOrder&oid=${o.oid}&id=0';">取消</button>
											</td>

										</c:when>
										<c:when test="${o.status==1}">
											<td>待支付</td>
											<td><button type="button" class="btn btn-xs btn-danger"
													onclick="javascript:window.location.href='${pageContext.request.contextPath}/order?method=cancelOrder&oid=${o.oid}&id=0';">取消</button>
											</td>
										</c:when>
										<c:when test="${o.status==2}">
											<td>已改签</td>
											<td></td>
										</c:when>
										<c:when test="${o.status==3}">
											<td>已取消</td>
											<td></td>
										</c:when>
										<c:when test="${o.status==4}">
											<td>首发改签</td>
											<td><button type="button" class="btn btn-xs btn-danger"
													onclick="javascript:window.location.href='${pageContext.request.contextPath}/order?method=cancelOrder&oid=${o.oid}&id=0';">取消</button>
											</td>
										</c:when>
									</c:choose>
								</tr>
							</c:forEach>

						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script
		src="js/ie10-viewport-bug-workaround.js"></script>


</body>
</html>

