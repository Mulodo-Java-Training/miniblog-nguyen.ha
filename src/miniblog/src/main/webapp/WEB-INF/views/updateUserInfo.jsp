<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Update My Information </title>

	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
	
	<style>

		.styled-select{
			height: 30px;
		}

		/*Blue style*/
		.blue{
			color: #2FADE0;
		}
		.blue-border{
			border: 1px solid #28AAE0;
		}
		.no-blue-border-top{
			border-top: 1px solid #28AAE0;
			border-right: 1px solid #28AAE0;
			border-left: 1px solid #28AAE0;
			border-bottom: none;
		}		
		.blue-tab{
			border-radius: 0px;
			padding-right: 45px;
			padding-left: 45px;
		}

		
		/*Upload image*/
		.fileUpload {
			overflow: hidden;
			position: absolute;
			width: 140px;
			left: 20px;
			top: 111px;
			border-radius: 0px;
		}
		.fileUpload input.upload {
			position: absolute;
			top: 0;
			right: 0;
			margin: 0;
			padding: 0;
			font-size: 20px;
			cursor: pointer;
			opacity: 0;
			filter: alpha(opacity=0);
		}

	</style>
</head>

</head>
<body>
<div class="container-fluid" style="background-color: #28AAE0;border-color: #28AAE0;">
		<div class="container">

			<div class="navbar-header col-md-3">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="glyphicon glyphicon-align-justify" style="color:#fff"></span>
				</button>
				<a class="logo" href="index.html">Mini Blog</a>
			</div>

			<div class="col-md-5" style="margin-top: 8px;">
				<form role="form" action="searchUser.html">
					<div class="input-group">
						<input name="word" class="form-control" value="" type="text">
						<span class="input-group-btn">
							<input class="btn btn-primary" value="Search" type="submit">
						</span>
					</div><!-- /input-group -->
				</form>
			</div>

			<div id="navbar" class="navbar-collapse collapse col-md-4">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">Blog</a></li>
					<li class="dropdown active">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="true">My Account<span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="UpdateUserInfo.html">Update Info</a></li>
							<li><a href="change-password.html">Change Password</a></li>
							<li><a href="manage-post.html">Manage Post</a></li>
							<li><a href="index.html">Log out</a></li>
						</ul>
					</li>
				</ul>
			</div>

		</div>
	</div>

	<div class="clearfix"></div>

	<div class="container">
		<div class="row" style="margin-top:10px;">
			<ol class="breadcrumb">
				<li><a href="index.html">Home</a></li>
				<li><a href="#">My Account</a></li>
				<li class="active">Update User's Information</li>
			</ol>

			<!--Content-->
				<div class="container-fluid" style="padding-top:15px;padding-bottom:20px">
					<div class="alert alert-success" role="alert" style="margin-top:5px;">
						<button type="button" class="close" data-dismiss="alert">
							<span aria-hidden="true">&times;</span>
							<span class="sr-only">Close</span>
						</button>
						You have updated successfully
					</div>
					<div class="alert alert-danger" role="alert" style="margin-top:5px;">
						<button type="button" class="close" data-dismiss="alert">
							<span aria-hidden="true">&times;</span>
							<span class="sr-only">Close</span>
						</button>
						You have updated unsuccessfully
					</div>
					<form:form class="form-horizontal" role="form" method="POST" action="${pageContext.request.contextPath}/user/add" modelAttribute="userinfo">
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
									<input onchange="handlerInputFileChange(this)" class="upload" type="file">
								</div>	
								<img id ="image-upload" class="img-thumbnail" style="width:150px;height:150px;" src="img/200x200.gif" alt="Avatar User" />
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
</div>
	<script src="<c:url value="/resources/js/jquery.js" />"></script>
	<script src="<c:url value="/resources/js/bootstrap.js" />"></script>
	<script>
	$('#mobile').keypress(function(evt) {
		var theEvent = evt || window.event;
		var key = theEvent.keyCode || theEvent.which;
		key = String.fromCharCode( key );
		var regex = /[0-9]|\./;
		if( !regex.test(key) ) {
			theEvent.returnValue = false;
			if(theEvent.preventDefault) 
				theEvent.preventDefault();
		}
		if($(this).val().length-2 <= 11){
			$(this).val(function(i, text) {
				text = text.replace(/(\d\d\d\d)(\d\d\d\d)([0-9])/, "$1.$2.$3");
				return text;
			});
		}else{
			theEvent.returnValue = false;
			if(theEvent.preventDefault) 
				theEvent.preventDefault();
		}
	});
	
	function handlerInputFileChange(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function (e) {
				$('#image-upload')
				.attr('src', e.target.result);
			};

			reader.readAsDataURL(input.files[0]);
		}
	}
</script>
</body>
</html>