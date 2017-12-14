<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<meta name="description" content="">
<meta name="author" content="">
<title>用户注册</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h2 class="sub-header">用户注册</h2>
		<form class="form-horizontal" role="form" method="post"
			action="${pageContext.request.contextPath}/user?method=register">

			<div class="form-group">
				<label class="col-sm-2 control-label">用户名:</label>
				<div class="col-sm-10">
					<input class="form-control" id="focusedInput" type="text"
						name="username">
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">用户密码:</label>
				<div class="col-sm-10">
					<input type="password" id="inputPassword" class="form-control"
						name="passwd" placeholder="password" required="">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">用户姓名:</label>
				<div class="col-sm-10">
					<input class="form-control" id="focusedInput" type="text"
						name="name">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">身份证号码:</label>
				<div class="col-sm-10">
					<input class="form-control" id="focusedInput" type="text" name="ccid">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">手机号码:</label>
				<div class="col-sm-10">
					<input class="form-control" id="focusedInput" type="text" name="phone">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">地址:</label>
				<div class="col-sm-10">
					<input class="form-control" id="focusedInput" type="text" name="address">
				</div>
			</div>


			<button type="submit" class="btn btn-default">提交</button>
		</form>
	</div>
</body>
</body>
</html>