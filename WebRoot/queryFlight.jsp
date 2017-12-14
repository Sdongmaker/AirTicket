<%@page import="indi.bean.Orders"%>
<%@page import="indi.service.UserService"%>
<%@page import="indi.bean.UserInfo"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	/* UserInfo user = (UserInfo) session.getAttribute("userInfo"); */
	/* if (user == null) {
		response.sendRedirect(request.getContextPath() + "/login.jsp");
		
	} */
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
<link href="css/dashboard.css" rel="stylesheet">

<script
	src="js/ie-emulation-modes-warning.js"></script>
<script src="js/jquery.min.js"></script>
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
				href="${pageContext.request.contextPath}/index.jsp">机票预订系统</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<c:choose>
					<c:when test="${empty sessionScope.userInfo.name}">
						<li><a href="login.jsp">登录</a></li>
					</c:when>
					<c:otherwise>
						<li><a
							href="${pageContext.request.contextPath}/user?method=signOut">退出</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</div>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<input type="hidden" value="${sessionScope.userInfo.name}"
				id="username">
			<c:choose>
				<c:when test="${!empty sessionScope.userInfo.name}">
					<div class="col-sm-3 col-md-2 sidebar">
						<ul class="nav nav-sidebar">
							<li><a href="user.jsp">主页 </a></li>
							<li><a href="updateUser.jsp">信息修改</a></li>
							<li class="active"><a href="#">航班查询<span class="sr-only">(current)</span></a></li>
							<li><a
								href="${pageContext.request.contextPath}/order?method=userOrder">我的订单</a></li>
						</ul>

					</div>
				</c:when>
			</c:choose>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<c:if test="${sessionScope.queryFlightMsg!=null}">
					<div class="alert alert-info" role="alert">${queryFlightMsg}
						${sessionScope.queryFlightMsg=null}</div>
				</c:if>
				<form class="form-inline" method="post"
					action="${pageContext.request.contextPath}/flights?method=getFlights">
					<div class="form-group">
						<label for="exampleInputName2">出发地</label> <input type="text"
							class="form-control" id="start_point" name="start_point"
							placeholder="出发地" value="${flight[0].start_point}">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail2">目的地</label> <input type="text"
							class="form-control" id="end_point" name="end_point"
							placeholder="目的地" value="${flight[0].end_point}">
					</div>
					<div class="form-group">
						<label for="exampleInputName2">航班日期</label> <input type="date"
							class="form-control" name="days" id="days" value="${requestScope.days}">
					</div>
					<button type="submit" class="btn btn-default">查询</button>
				</form>
				<h2 class="sub-header">
					<label><c:out value="${days}" /></label>&nbsp;从&nbsp;&nbsp;<b>
					<c:out value="${flight[0].start_point}" /></b>
					&nbsp;&nbsp; 飞往&nbsp;&nbsp;<b>
					<c:out value="${flight[0].end_point}" /></b>
					&nbsp;&nbsp; 航班
				</h2>

				<div class=" col-md-12">
					<div class="col-md-2 ">飞机型号</div>
					<div class="col-md-2 col-md-offset-1">起飞时间</div>
					<div class="col-md-2">到达时间</div>
					<div class="col-md-2">价格</div>
					<div class="col-md-3">操作</div>
				</div>
				<hr>
				<c:forEach items="${flight}" var="f">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="col-md-2 ">${f.airplane.aname}</div>
							<div class="col-md-2 col-md-offset-1">${f.start_time}<br>${f.start_point}
							</div>
							<div class="col-md-2">${f.end_time}<br>${f.end_point}
							</div>
							<div class="col-md-2">
								价格<br>
							</div>
							<div class="col-md-3">
								<a class="btn btn-primary" role="button" data-toggle="collapse"
									href="#${f.fid}" aria-expanded="false"
									aria-controls="collapseExample"> 操作</a>

							</div>
						</div>
					</div>
					<div class="collapse" id="${f.fid}">
						<div class="well">
							<!-- <p><div class="col-md-offset-4 col-md-3">商务舱</div><p>
								<p><div class="col-md-offset-4 col-md-3">公务舱<p></div><p>
								<p><div class="col-md-offset-4 col-md-3">经济舱</div><p> -->
							<table class="table table-striped">
								<input type="hidden" name="fid" value="${f.fid}" />
								<c:forEach items="${f.airplane.price}" var="pic">
									<tr>
										<td><input type="hidden" name="pid" value="${pic.pid}" /></td>
										<td></td>
										<td class="type">${pic.type }</td>
										<td>${f.airplane.f_class_cnt }</td>
										<td class="price">${f.distance * f.airplane.arate * pic.rate + pic.base}</td>
										<td><button type="button" class="btn btn-success yd">预订</button></td>
									</tr>
								</c:forEach>
							</table>

						</div>
					</div>
				</c:forEach>
				<script type="text/javascript">
				
					$(function() {
						$(".yd").click(function() {
							var username = $("#username").val();
							if (username == "") {
								alert("请先登陆！");
								window.location = "login.jsp";return;
							}
							var fid = $(this).parents("table").find("input[name='fid']").val();
							var pid = $(this).parents("tr").find("input[name='pid']").val();
							//var type=$(this).parents("tr").find(".type").text();
							var price = $(this).parents("tr").find(".price").text();
							var days = $("#days").val();
							console.log(pid + " " + price + "" + username+" "+days);
							$.post("${pageContext.request.contextPath}/order?method=addOrder",
								{
									"fid" : fid,
									"prices" : price,
									"pid" : pid,
									"days":days
								}, function(data) {
									if (data = 200) {
										alert("预定成功！");
										location.href ="${pageContext.request.contextPath}/order?method=userOrder"
									}
									console.log(data);
								});
						});
				
					})
				</script>


			</div>
		</div>

		<!-- Bootstrap core JavaScript
    ================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="js/bootstrap.min.js"></script>
		<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
		<script src="js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
