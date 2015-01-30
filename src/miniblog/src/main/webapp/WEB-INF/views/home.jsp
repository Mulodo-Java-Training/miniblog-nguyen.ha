<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>

<%@ include file="header.jsp" %>

	<div class="clearfix"></div>
	<div class="container">
		<div class="row" style="margin-top:10px;">
			<!--Content-->
			<div class="container-fluid">
				<% request.setCharacterEncoding("utf-8"); %>
				 <c:forEach var="blogrow" items="${listTopBlogs}" begin="0" step="2" varStatus="counter">
					<div class="row">
						<c:forEach var="blog" items="${listTopBlogs}" begin="${(counter.count-1)*2}" end="${counter.count*2-1}">
						
							<jsp:include page="blogCell.jsp" >
								<jsp:param name="title" value="${blog.title}" />
								<jsp:param name="author" value="${blog.user.username}" />
			  					<jsp:param name="updated_at" value="${blog.updated_at}" />
			  					<jsp:param name="username" value="${blog.user.username}" />
			  					<jsp:param name="image" value="${blog.image}" />
			  					<jsp:param name="description" value="${blog.description}" />
		  					</jsp:include>
						</c:forEach>
					</div><br>
				</c:forEach>
				  
				
				
			</div>
			<!--End Content-->
		</div>
	</div>
<%@ include file="footer.jsp" %>
