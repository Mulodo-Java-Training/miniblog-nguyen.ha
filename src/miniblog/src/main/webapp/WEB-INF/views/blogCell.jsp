<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.myminiblog.util.DateUtil"%>
<div class="col-md-2">
	<a href="#">
		<img data-holder-rendered="true" src="${param.image}" style="" class="img-responsive" alt="">
	</a>	
</div>
<div class="col-md-4">
	<div class="title"><a href="#">${param.title}</a></div>
	<% 
		DateUtil formatDate = new DateUtil();
		String dateStr = formatDate.convertStringTimestampToStringDate(request.getParameter("updated_at"), "dd/MM/yyyy hh:ss a");
		
	%>
	
	<div class="date"> <%= dateStr %> | Author: <a href="#">${param.username}</a></div>
	<div class="description">
		${param.description}
	</div>
</div>
