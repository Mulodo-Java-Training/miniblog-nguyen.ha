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
				<li>Search User</li>
			</ol>
			<!--Content-->
			
			<div class="container-fluid">
				<div class="col-md-12" style="margin-bottom: 10px;">Find <span class="red">${noOfRecords}</span> results with keyword <span class="red">"${nameSearch}"</span></div>
				<c:forEach var="user" items="${listUsers}" begin="0" step="3" varStatus="counter">
					<div class="row">
					<c:forEach var="user" items="${listUsers}" begin="${(counter.count-1)*3}" end="${counter.count*3-1}">
						<jsp:include page="user.jsp" >
							<jsp:param name="avatar" value="${user.image}" />
							<jsp:param name="firstname" value="${user.firstname}" />
		  					<jsp:param name="username" value="${user.username}" />
		  					<jsp:param name="lastname" value="${user.lastname}" />
		  					<jsp:param name="created_at" value="${user.created_at}" />
	  					</jsp:include>
					</c:forEach>
					</div><br>
				</c:forEach>
	
				<nav>
			      <ul class="pagination">
			      	 <%--For displaying Previous link except for the 1st page --%>
			      	<c:if test="${currentPage != 1}">
			      		
			      		<c:url value="/searchUser" var="resultURL" scope="request">
							<c:param name="nameUser" value="${nameSearch}"/>
							<c:param name="page" value="${currentPage-1}"/>
						</c:url>
			        	<li class="disabled"><a href="${resultURL}">Prev</a></li>
			        </c:if>
			        
			        <%--For displaying Page numbers. 
			    	The when condition does not display a link for the current page--%>
			        <c:forEach begin="1" end="${noOfPages}" var="i">
			                <c:choose>
			                    <c:when test="${currentPage eq i}">
			                    	<li class="active"><a href="${resultURL}">${i}</a></li>
			                    </c:when>
			                    <c:otherwise>
			                    	<c:url value="/searchUser" var="resultURL" scope="request">
										<c:param name="nameUser" value="${nameSearch}"/>
										<c:param name="page" value="${i}"/>
									</c:url>
									<li><a href="${resultURL}">${i}</a></li>       
			                    </c:otherwise>
			                </c:choose>
			            </c:forEach>
			        <%--For displaying Next link --%>
			        <c:if test="${currentPage lt noOfPages}">
			        	<c:url value="/searchUser" var="resultURL" scope="request">
							<c:param name="nameUser" value="${nameSearch}"/>
							<c:param name="page" value="${currentPage+1}"/>
						</c:url>
			        	<li><a href="${resultURL}">Next</a></li>
			    	</c:if>
			     </ul>
			   </nav>
			</div>
			<!--End Content-->
		</div>
	</div>

<%@ include file="footer.jsp" %>