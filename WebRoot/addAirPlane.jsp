<%@page import="indi.bean.Manager"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	Manager manager = (Manager) session.getAttribute("manager");
	if (manager == null) {
		response.sendRedirect(request.getContextPath() + "/login2.jsp");
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
<title>添加新航班</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>

<body>
	<div class="container">
		<h2 class="sub-header">添加新飞机</h2>
		<form class="form-horizontal" role="form" method="post"
			action="${pageContext.request.contextPath}/airplane?method=addAirplane">

			<div class="form-group">
				<label class="col-sm-2 control-label">飞机名称</label>
				<div class="col-sm-10">
					<input class="form-control" id="focusedInput" type="text"
						name="aname">
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">飞机价格系数</label>
				<div class="col-sm-10">
					<input class="form-control" id="focusedInput" type="text"
						name="arate">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">头等舱数量</label>
				<div class="col-sm-10">
					<input class="form-control" id="focusedInput" type="text"
						name="f_class_cnt">
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">公务舱数量</label>
				<div class="col-sm-10">
					<input class="form-control" id="focusedInput" type="text"
						name="b_class_cnt">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">经济舱数量</label>
				<div class="col-sm-10">
					<input class="form-control" id="focusedInput" type="text"
						name="e_class_cnt">
				</div>
			</div>

			<button type="submit" class="btn btn-default">提交</button>
		</form>
	</div>
</body>

</html>
