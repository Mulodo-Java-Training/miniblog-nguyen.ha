<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ include file="header.jsp" %>
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

<%@ include file="footer.jsp" %>
