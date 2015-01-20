<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>

<html>
<%@ include file="header.jsp" %>

	<div class="clearfix"></div>
	<div class="container">
		<div class="row" style="margin-top:10px;">
			<!--Content-->
			<div class="container-fluid">
				
				 <c:forEach var="blog" items="${listTopBlogs}" begin="0" step="2" varStatus="counter">
				 <div class="row">
				  <div class="col-md-2">
				    <a href="#">
				     <img data-holder-rendered="true" src="${blog.image}" style="" class="img-responsive" alt="">
				    </a>	
				  </div>
				  <div class="col-md-4">
				  	<div class="title"><a href="#">${blog.title}</a></div>
				  	<div class="date"> ${blog.updated_at} | Author: <a href="listUserPost.html">${blog.user.username}</a></div>
				  	<div class="description">
				  		${blog.description}
				  	</div>
				  </div>
				  <c:forEach var="blog2" items="${listTopBlogs}" begin="${counter.count*2-1}" end="${counter.count*2-1}">
				  <div class="col-md-2">
				    <a href="#">
				     <img data-holder-rendered="true" src="${blog2.image}" style="" class="img-responsive" alt="">
				    </a>	
				  </div>
				  <div class="col-md-4">
				  	<div class="title"><a href="#">${blog2.title}</a></div>
				  	<div class="date"> ${blog2.updated_at} | Author: <a href="listUserPost.html">${blog2.user.username}</a></div>
				  	<div class="description">
				  		${blog2.description}
				  	</div>
				  </div>
				  </c:forEach> 
				  </div><br>
				  </c:forEach> 
				  
				
				
			</div>
			<!--End Content-->
		</div>
	</div>
</body>
</body>
</html>
