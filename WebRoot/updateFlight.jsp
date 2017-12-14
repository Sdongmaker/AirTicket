<%@page import="indi.bean.Manager"%>
<%@page import="indi.bean.Flight"%>
<%@page import="indi.service.ManagerService"%>
<%@page import="indi.service.impl.ManagerServiceImpl"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	Manager manager =(Manager)session.getAttribute("manager");
	if(manager==null){
		response.sendRedirect(request.getContextPath()+"/login2.jsp");
	}
	
	int fid=Integer.parseInt(request.getParameter("fid"));
	ManagerService aService =new ManagerServiceImpl();
	List<Flight> flightList= aService.listAllFlight();
	for(Flight flight:flightList){
		if(flight.getFid()==fid){
			request.setAttribute("flight", flight);
			break;
		}
	} 
 %>
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<meta name="description" content="">
		<meta name="author" content="">
		<title>修改航班信息</title>
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
	</head>

	<body>
		<div class="container">
			<h2 class="sub-header">修改航班信息</h2>
			<form class="form-horizontal" role="form" method="post" action="${pageContext.request.contextPath}/flights?method=updateFlight">
				<div class="form-group">
					<label for="inputPassword" class="col-sm-2 control-label">航班编号</label>
					<div class="col-sm-10">
						<input class="form-control" id="disabledInput" type="text" placeholder="${flight.fid}" disabled name="fid">
						<input type="hidden" name="fid" value="${flight.fid}">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-2 control-label">飞机编号</label>
					<div class="col-sm-10">
						<input class="form-control" id="focusedInput" type="text" name="aid" value="${flight.aid}">
					</div>
				</div>
				
				<div class="form-group">
					<label for="inputPassword" class="col-sm-2 control-label">出发地</label>
					<div class="col-sm-10">
						<input class="form-control" id="disabledInput" type="text" placeholder="${flight.start_point}" disabled name="start_point">
						<input type="hidden" name="start" value="${flight.start_point}">
					</div>
				</div>
				
				<div class="form-group">
					<label for="inputPassword" class="col-sm-2 control-label">目的地</label>
					<div class="col-sm-10">
						<input class="form-control" id="disabledInput" type="text" placeholder="${flight.end_point}" disabled name="end_point">
						<input type="hidden" name="dist" value="${flight.end_point}">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-2 control-label">起飞时间</label>
					<div class="col-sm-10">
						<input class="form-control" id="focusedInput" type="time"" name="start_time" value="${flight.start_time}">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-2 control-label">到达时间</label>
					<div class="col-sm-10">
						<input class="form-control" id="focusedInput" type="time" name="end_time" value="${flight.end_time}">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-2 control-label">里程</label>
					<div class="col-sm-10">
						<input class="form-control" id="focusedInput" type="text" name="distance" value="${flight.distance}">
					</div>
				</div>
				
			<button type="submit" class="btn btn-default">提交</button>
			</form>
		</div>
	</body>

</html>
