<%@ page language="java"  contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>机票预订系统</title>
<!-- Bootstrap core CSS -->
<link href="css/bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/signin.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div id="loginModal" class="modal show">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close"></button>
						<h1 class="text-center text-primary">飞机订票系统</h1>
					</div>
					<div class="modal-body">
						<form class="form col-md-12 center-block" method="post" action="${pageContext.request.contextPath}/flights?method=getFlights">
							<div class="form-group">

								<input type="text" class="form-control input-lg" name="start_point" placeholder="出发城市">
							</div>
							<div class="form-group">
								<input type="text" class="form-control input-lg" name="end_point" placeholder="到达城市">
							</div>
							<div class="form-group">
								<input class="form-control input-lg" id="days" type="date" name="days">
							</div>

							<div class="form-group">
								<button class="btn btn-primary btn-lg btn-block">查询</button>
							</div>
						</form>
					</div>
					<div class="modal-footer">

					</div>
				</div>
			</div>
		</div>
</body>
</html>