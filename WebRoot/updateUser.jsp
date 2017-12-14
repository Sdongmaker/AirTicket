<%@ page language="java" import="indi.bean.UserInfo" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	UserInfo user =(UserInfo)session.getAttribute("userInfo");
	if(user==null){
		response.sendRedirect(request.getContextPath()+"/login.jsp");
	}
 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
	<title>用户主页</title>
	
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
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
		  <a class="navbar-brand"
				href="${pageContext.request.contextPath}/user.jsp">机票预订系统</a>
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
            <li><a href="user.jsp">个人主页</a></li>
            <li class="active"><a href="updateUser.jsp">信息修改<span class="sr-only">(current)</span></a></li>
            <li><a href="queryFlight.jsp">航班查询</a></li>
            <li><a href="${pageContext.request.contextPath}/order?method=userOrder">我的订单</a></li>
          </ul>
          
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
         <h2 class="sub-header">修改个人信息</h2>
		<form class="form-horizontal" role="form" method="post"
			action="${pageContext.request.contextPath}/user?method=updateUser">

			<div class="form-group">
				<label class="col-sm-2 control-label">用户名:</label>
				<div class="col-sm-10">
					<input class="form-control" id="inputUsername" type="text" readonly
						name="username" value="${sessionScope.userInfo.username }">
				</div>
			</div>
			<input type="hidden" value="${sessionScope.userInfo.uid }" name="uid"/>
			<div class="form-group">
				<label class="col-sm-2 control-label">用户密码:</label>
				<div class="col-sm-10">
					<input type="text" id="inputPassword" class="form-control"
						name="passwd" placeholder="password" value="${sessionScope.userInfo.passwd }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">用户姓名:</label>
				<div class="col-sm-10">
					<input class="form-control" id="focusedInput" type="text"
						name="name" value="${sessionScope.userInfo.name }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">身份证号码:</label>
				<div class="col-sm-10">
					<input class="form-control" id="focusedInput" type="text" name="ccid" value="${sessionScope.userInfo.ccid }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">手机号码:</label>
				<div class="col-sm-10">
					<input class="form-control" id="focusedInput" type="text" name="phone" value="${sessionScope.userInfo.phone }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">地址:</label>
				<div class="col-sm-10">
					<input class="form-control" id="focusedInput" type="text" name="address" value="${sessionScope.userInfo.address }">
				</div>
			</div>


			<button type="submit" class="btn btn-default">提交</button>
		</form>


      </div>
    </div>

 

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>


</body></html>
