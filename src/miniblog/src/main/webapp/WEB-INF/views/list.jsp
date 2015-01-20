<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.io.*,java.sql.*,com.myminiblog.model.*" %>
<%@ page session="false" %>
<html>
<head>
	<title>List User</title>
</head>
<body>
<h1>
	Demo Spring MVC!  
</h1>

<table border="1" cellpadding="5" cellspacing="5">
        <tr>
            <th>ID</th>
            <th>User Name</th>
            <th>Fist name</th>
            <th>Last name </th>
            <th>Address</th>
            <th colspan=2>Action</th>
        </tr>

        <c:forEach var="user" items="${listUsers}">
        
            <tr>
                <td>${user.getId()}</td>
                <td>${user.getUserName()}</td>
                <td>${user.getFirstname()}</td>
                <td>${user.getLastname()}</td>
                <td>${user.getAddress()}</td>
                <td><a href="device_servlet?action=edit&id_device=<c:out value="${user.getId()}"/>">Update</a></td>
                <td><a href="device_servlet?action=delete&id_device=<c:out value="${user.getId()}"/>">Delete</a></td>
               
            </tr>
        </c:forEach> 
    </table>
</body>
</html>