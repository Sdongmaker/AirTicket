<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>航班详情</title>
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
	<div class="container">
	

		<form class="form-horizontal" role="form" method="post" action="${pageContext.request.contextPath}/flights?method=getFlights">

			<div class="form-group">
				<label class="col-sm-2 control-label">出发城市:</label>
				<div class="col-sm-3">
					<input class="form-control" id="start_point" type="text"
						name="start_point" placeholder="北京">
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">到达城市:</label>
				<div class="col-sm-3">
					<input type="text" id="end_point" class="form-control"
						name="end_point" placeholder="广州" required="">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">出发时间:</label>
				<div class="col-sm-3">
					<input class="form-control" id="start_time" type="date"
						name="start_time" value="">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-3">
					<button type="submit" class="btn btn-default">提交</button>
				</div>
			</div>
		</form>


	</div>

</body>
</html>