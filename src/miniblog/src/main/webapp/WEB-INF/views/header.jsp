<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<title>Home</title>
	
	<link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
	<script src="<c:url value="/resources/js/jquery.js" />"></script>
	<script src="<c:url value="/resources/js/bootstrap.js" />"></script>
	<script>
	function handlerInputFileChange(input) {
		if (input.files && input.files[0]) {
			var fileSize = input.files[0];
		    var sizeInMb = fileSize.size;
		    var sizeLimit= 5000000;
		    if (sizeInMb < sizeLimit) {
		    	
		    	var reader = new FileReader();

				reader.onload = function (e) {
					$('#image-upload')
					.attr('src', e.target.result);
					
				};
				
				reader.readAsDataURL(input.files[0]);
		    }else{
		    	var limit_avatar = document.getElementById("limit_avatar").value;
		    	alert("Image size should be less than "+limit_avatar+ " byte");
		    }
			
		}
	}
	
</script>
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
					<form:form role="form" action="${pageContext.request.contextPath}/searchUser">
						
					<div class="input-group">
						<input name="nameUser" class="form-control txtSearch"  placeholder="Firstname, Lastname, Username" type="text">
						<span class="input-group-btn">
							<input class="btn btn-primary" value="Search" type="submit">
						</span>
		
					</div><!-- /input-group -->
			
					</form:form>
				</div>
				<div id="navbar" class="navbar-collapse collapse col-md-4">
	
					<ul class="nav navbar-nav navbar-right">
						<li><a href="${pageContext.request.contextPath}/blog">Blog</a></li>
						<c:choose>
   						<c:when test="${empty sessionScope.user_loged_in}" >
   							<%  %>
   							<li><a href="${pageContext.request.contextPath}/login">Login</a></li>
  						</c:when>
   
   						<c:otherwise>
   						Hello, ${sessionScope.user_loged_in}
   						<li class="dropdown active">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="true">My Account<span class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="${pageContext.request.contextPath}/edit/${sessionScope.user_loged_in}">Update Info</a></li>
								<li><a href="${pageContext.request.contextPath}/changepassword">Change Password</a></li>
								<li><a href="${pageContext.request.contextPath}/blog">Manage Post</a></li>
								<li><a href="${pageContext.request.contextPath}/logout">Log out</a></li>
							</ul>
						</li>
   						</c:otherwise>
						</c:choose>
					</ul>
				</div>
		</div>
	</div>
