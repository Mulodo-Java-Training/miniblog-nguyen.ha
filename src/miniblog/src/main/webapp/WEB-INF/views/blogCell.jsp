<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="col-md-2">
	<a href="#">
		<img data-holder-rendered="true" src="${param.image}" style="" class="img-responsive" alt="">
	</a>	
</div>
<div class="col-md-4">
	<div class="title"><a href="#">${param.title}</a></div>
	<% long timestamp =Long.parseLong(request.getParameter("updated_at")); //Example -> in ms
		System.out.println(timestamp); 
		java.util.Date date = new java.util.Date(timestamp);
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("dd/MM/yyyy hh:ss a");
		%>
	<div class="date"> <%= sdf.format(date) %> | Author: <a href="#">${param.username}</a></div>
	<div class="description">
		${param.description}
	</div>
</div>