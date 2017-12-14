<%@ page language="java" import="indi.bean.Manager"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	Manager user = (Manager) session.getAttribute("manager");
	if (user != null) {
		response.sendRedirect(request.getContextPath() + "/manager.jsp");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>登陆航班管理系统</title>
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

    <form class="form-signin" method="post" action="${pageContext.request.contextPath}/user?method=login2">

        <c:if test="${not empty error}">
            <div class="alert alert-info" role="alert">${error}
            </div>
        </c:if>
        <h2 class="form-signin-heading">请登录</h2>
        <label for="inputText" class="sr-only">用户名</label> <input type="text"
                                                                  id="inputEmail" class="form-control" name="account"
                                                                  placeholder="account" required="" autofocus="">
        <label
                for="inputPassword" class="sr-only">密码</label><input
            type="password" id="inputPassword" class="form-control"
            name="passwd" placeholder="password" required="">
        <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
        
    </form>


</div>
<!-- /container -->


<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>