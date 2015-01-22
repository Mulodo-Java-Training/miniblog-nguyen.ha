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
				<li><a href="${pageContext.request.contextPath}/edit/${sessionScope.user_loged_in}">My Account</a></li>
				<li class="active">Update User's Information</li>
			</ol>

			<!--Content-->
				<div class="container-fluid" style="padding-top:15px;padding-bottom:20px">
				
				<c:if test="${!empty error}">
					<c:choose>
   						<c:when test="${error == 'false'}" >
   							<div class="alert alert-success" role="alert" style="margin-top:5px;">
							<button type="button" class="close" data-dismiss="alert">
								<span aria-hidden="true">&times;</span>
								<span class="sr-only">Close</span>
							</button>
							You have updated successfully
   							</div>
  						</c:when>
   						<c:otherwise>
	   						<div class="alert alert-danger" role="alert" style="margin-top:5px;">
							<button type="button" class="close" data-dismiss="alert">
								<span aria-hidden="true">&times;</span>
								<span class="sr-only">Close</span>
							</button>
							You have updated unsuccessfully
							</div>
   						</c:otherwise>
					</c:choose>
				</c:if>
					<form:form class="form-horizontal" role="form" method="POST" action="${pageContext.request.contextPath}/user/add" modelAttribute="userinfo" enctype="multipart/form-data">
						<div class="row">
							<div class="col-md-12">
								<span class="btn btn-primary blue-tab no-blue-border-top">Basic info</span>
							</div>
						</div>

						
						<div class="container-fluid blue-border">
							<div class="col-md-6 col-md-offset-1" style="margin-top:10px">
								<div class="form-group">
								
								
            					
            					<form:hidden path="username" />
        						<form:hidden path="password" />
								
									<label for="first-name" class="col-md-3 control-label">First name</label>
									<div class="col-md-9">
										<form:input path="firstname" type="text" class="form-control" id="first-name"/>
									</div>
								</div>
								<div class="form-group">
									<label for="last-name" class="col-md-3 control-label">Last name</label>
									<div class="col-md-9">
										<form:input path="lastname"  type="text" class="form-control" id="last-name" />
									</div>
								</div>
							</div>

							<div class="col-md-3" style="margin-top:10px">
								<div class="fileUpload btn btn-primary">	
									<span>Change Avatar</span>
									<input onchange="handlerInputFileChange(this)" class="upload" type="file" accept="image/x-png, image/gif, image/jpeg" name="imagelink">
								</div>
								
								<img id ="image-upload" class="img-thumbnail" style="width:150px;height:150px;" src="<%=request.getContextPath()%>/resources/avatar/${userinfo.image}" alt="Avatar User" />
							</div>
						</div>

						<div class="row" style="margin-top:20px;">
							<div class="col-md-12">
								<span class="btn btn-primary blue-tab no-blue-border-top">Contact info</span>
							</div>
						</div>


						<div class="container-fluid blue-border">
							<div class="col-md-6 col-md-offset-1" style="margin-top:10px">
								<div class="form-group">
									<label for="address" class="col-md-3 control-label">Addreess</label>
									<div class="col-md-9">
										<form:input path="address"  type="text" class="form-control" />
									</div>
								</div>

								<div class="form-group">
									<label for="email" class="col-md-3 control-label">Email</label>
									<div class="col-md-9">
										<form:input path="email"  type="email" class="form-control" />
									</div>
								</div>
							</div>
						</div>

						<div class="row" style="margin-top:20px">
							<div class="col-md-12">
								<span class="btn btn-primary blue-tab no-blue-border-top">Comfirm</span>
							</div>
						</div>
						<div class="container-fluid blue-border">
							<div class="col-md-12" style="margin-top:10px;margin-bottom:10px;margin-left:auto;margin-right:auto;text-align:center">
								<button type="submit" class="btn btn-primary" style="border-radius:0px;">OK</button>
								<button class="btn btn-primary" style="border-radius:0px;">CANCEL</button>
							</div>
						</div>
					</form:form>
					</div>
				
			
		</div>
		<!--End Content-->
	</div>

	
	
<%@ include file="footer.jsp" %>
