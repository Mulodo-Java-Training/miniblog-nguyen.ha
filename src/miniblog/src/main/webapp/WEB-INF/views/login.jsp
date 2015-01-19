<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<title>Login</title>
	
	<link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
	<script src="<c:url value="/resources/js/jquery.js" />"></script>
	<script src="<c:url value="/resources/js/bootstrap.js" />"></script>

</head>
<body>
	
	<div class="container-fluid" style="background-color: #28AAE0;border-color: #28AAE0;">
		<div class="container">
				<div class="navbar-header col-md-3">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="glyphicon glyphicon-align-justify" style="color:#fff"></span>
					</button>
					<a class="logo" href="${pageContext.request.contextPath}/">Mini Blog</a>
				</div>
				<div class="col-md-5" style="margin-top: 8px;">
					<form role="form" >
						
					<div class="input-group">
						<input name="word" class="form-control" placeholder="Firstname, Lastname, Username" type="text">
						<span class="input-group-btn">
							<input class="btn btn-primary" value="Search" type="submit">
						</span>
		
					</div><!-- /input-group -->
			
					</form>
				</div>
				<div id="navbar" class="navbar-collapse collapse col-md-4">
	
					<ul class="nav navbar-nav navbar-right">
						<li><a href="list-all-posts.html">Blog</a></li>
						<li class="active"><a href="#about">Login</a></li>
						
					</ul>
				</div>
		</div>
	</div>
	<div class="clearfix"></div>
	<div class="container">
		<div class="row" style="margin-top:10px;">
			<ol class="breadcrumb">
				<li><a href="${pageContext.request.contextPath}/">Home</a></li>
				<li>Login</li>
			</ol>
			<!--Content-->
			<div class="container">
				<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-6">
				
					<form:form role="form" style="margin-top: 100px;" method="POST" action="${pageContext.request.contextPath}/login" modelAttribute="User" >
					
					<c:if  test="${!empty login_error}">
						<!-- <div class="alert alert-success" role="alert">Login success</div> -->
						<div class="alert alert-danger" role="alert">Login error</div>
					</c:if>
					  <div class="form-group">
					    <label for="exampleInputEmail1">Username</label>
					    <form:input type="text" class="form-control" id="username" path="username" placeholder="Enter username"/>
					  </div>
					  <div class="form-group">
					    <label for="exampleInputPassword1">Password</label>
					    <form:password path="password" class="form-control" id="password" placeholder="Enter password" />
					  </div>
					  <button type="submit" value="Submit" class="btn btn-default">Login</button>
					</form:form> 
					
					
				</div>
				</div>
			</div>
			<!--End Content-->
		</div>
	</div>

</body>
</html>