<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="col-md-4">
  	<div class="col-md-5">
  		 
  		<c:if test="${!empty param.avatar}">
			<a href="<%=request.getContextPath()%>/resources/avatar/${param.avatar}">
	  			<img data-holder-rendered="true" src="<%=request.getContextPath()%>/resources/avatar/${param.avatar}" style="" class="img-responsive" alt="">
	  		</a> 	
		</c:if>
		<c:if test="${empty param.avatar}">
			<a href="http://insight.venturebeat.com/sites/all/modules/features/vb_intel_analysts/assets/images/analyst-placeholder-avatar.png">
				<img data-holder-rendered="true" src="http://insight.venturebeat.com/sites/all/modules/features/vb_intel_analysts/assets/images/analyst-placeholder-avatar.png" style="" class="img-responsive" alt="">
		    </a>
		</c:if>
	</div>
	<div class="col-md-7">
		<% long timestamp =Long.parseLong(request.getParameter("created_at")); //Example -> in ms
		System.out.println(timestamp); 
		java.util.Date date = new java.util.Date(timestamp);
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("dd/MM/yyyy");
		%>
		<div class="title">${param.username}</div>
		<div class="date"> Date join: <%= sdf.format(date) %>
		</div>
		<div>Firstname: ${param.firstname}</div>
		<div>Lastname: ${param.lastname}</div>
		<div class="title"><a href="listUserPost.html">View all Post</a></div>
	</div>
  	
</div>