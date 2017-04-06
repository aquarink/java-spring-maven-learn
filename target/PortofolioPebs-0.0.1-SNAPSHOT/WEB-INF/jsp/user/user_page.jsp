<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Page</title>
</head>
<body>
<h1>User List</h1>
<table border="1">
	<thead>
		<tr>
			<th>ID</th>
			<th>Firstname</th>
			<th>Lastname</th>
			<th>Address</th>
			<th></th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${listUser }" var="user">
			<tr>
				<td>${user.id }</td>
				<td>${user.firstname }</td>
				<td>${user.lastname }</td>
				<td>${user.address }</td>
				<td>
					<spring:url value="/update/${user.id }" var="updateUrl"/>
					<a href="${updateUrl }">Update</a>
				</td>
				<td>
					<spring:url value="/delete/${user.id }" var="updateUrl"/>
					<a href="${updateUrl }">Delete</a>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>