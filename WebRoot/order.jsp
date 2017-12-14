<%@page import="indi.bean.Orders"%>
<%@page import="indi.service.UserService"%>
<%@page import="indi.service.impl.UserServiceImpl"%>
<%@ page language="java" import="java.util.*"
	import="indi.bean.UserInfo" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	UserInfo user = (UserInfo) session.getAttribute("userInfo");
	if (user == null) {
		response.sendRedirect(request.getContextPath() + "/login.jsp");
		/* }else{
		//功能实现
		UserService userService = new UserServiceImpl();
		List<Orders> userOrderList  = userService.userOrder(user);
		
		request.setAttribute("userOrderList", userOrderList);
		request.setAttribute("userOrderListLength", userOrderList.size());  */
	}
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
<title>机票预订系统</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/dashboard.css"  rel="stylesheet">

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
				href="${pageContext.request.contextPath}/user.jsp">机票预订系统</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a
					href="${pageContext.request.contextPath}/user?method=signOut">退出</a></li>
			</ul>
		</div>
	</div>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				<ul class="nav nav-sidebar">
					<li><a href="user.jsp">主页 </a></li>
					<li><a href="updateUser.jsp">信息修改</a></li>
					<li><a href="queryFlight.jsp">航班查询</a></li>
					<li class="active"><a href="#">我的订单<span class="sr-only">(current)</span></a></li>
				</ul>

			</div>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<%-- <c:if test="${sessionScope.myOrderMsg!=null}">
					<div class="alert alert-info" role="alert">${myOrderMsg}
						${sessionScope.myOrderMsg=null}</div>
				</c:if> --%>
				<h2 class="sub-header">你有如下条${userOrderListLength}条订票记录</h2>
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>订单编号</th>
								<th>航班日期</th>
								<th>航班时间</th>
								<th>航班编号</th>
								<th>舱位</th>
								<th>起点</th>
								<th>终点</th>
								<th>价格</th>
								<th>订单状态</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="o" items="${userOrderList}">
								<tr>
									<td><c:out value="${o.oid}" /></td>
									<td><c:out value="${o.days}" /></td>
									<td><c:out value="${o.flight.start_time}" /></td>
									<td><c:out value="${o.fid}" /></td>
									<td><c:out value="${o.price.type}" /></td>
									<td><c:out value="${o.flight.start_point}" /></td>
									<td><c:out value="${o.flight.end_point}" /></td>
									<td><c:out value="${o.prices}" /></td>
									<c:choose>
										<c:when test="${o.status==0}">
											<td>已支付</td>
											<td><button type="button" class="btn btn-xs btn-success"
													onclick="javascript:window.location.href='${pageContext.request.contextPath}/order?method=reOrder&oid=${o.oid}&days=${o.days }';">改签</button>
												<button type="button" class="btn btn-xs btn-danger"
													onclick="javascript:window.location.href='${pageContext.request.contextPath}/order?method=cancelOrder&oid=${o.oid}&id=1';">取消</button>
											</td>

										</c:when>
										<c:when test="${o.status==1}">
											<td>待支付</td>
											<td><button type="button" class="btn btn-xs btn-success"
													onclick="javascript:window.location.href='${pageContext.request.contextPath}/order?method=payOrder&oid=${o.oid}';">支付</button>
												<button type="button" class="btn btn-xs  btn-warning"
													onclick="javascript:window.location.href='${pageContext.request.contextPath}/order?method=reOrder&oid=${o.oid}&days=${o.days }';">改签</button>
												<button type="button" class="btn btn-xs btn-danger"
													onclick="javascript:window.location.href='${pageContext.request.contextPath}/order?method=cancelOrder&oid=${o.oid}&id=1';">取消</button>
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
											<td>首发改签</td><td>
											<button type="button" class="btn btn-xs btn-success"
													onclick="javascript:window.location.href='${pageContext.request.contextPath}/order?method=payOrder&oid=${o.oid}';">支付</button>
												<button type="button" class="btn btn-xs btn-danger"
													onclick="javascript:window.location.href='${pageContext.request.contextPath}/order?method=cancelOrder&oid=${o.oid}&id=1';">取消</button>
											</td>
										</c:when>
									</c:choose>


									<%-- <td><c:if test="${!o.isCanceled}">
											<button type="button" class="btn btn-xs btn-success"
												onclick="javascript:window.location.href='servlet/CancelServlet?orderNo=${o.no}';">取消</button>
											<c:if test="${!o.isPayed}">
												<button type="button" class="btn btn-xs btn-success"
													onclick="javascript:window.location.href='servlet/PayServlet?orderNo=${o.no}';">付款</button>
											</c:if>
										</c:if></td> --%>
								</tr>
							</c:forEach>

						</tbody>
					</table>

				</div>

			</div>
		</div>

		<!-- Bootstrap core JavaScript
    ================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="js/jquery.min.js"></script>
		<script
			src="js/bootstrap.min.js"></script>
		
		<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
		<script src="js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
