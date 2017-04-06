<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Form</title>
</head>
<body>
<h1>User Form</h1>
<spring:url value="/save" var="saveUrl"/>
<form:form modelAttribute="formUser" method="POST" action="saveUrl">
	<table border="1">
		<tbody>
			<tr>
				<td>Firsname</td>
				<td><form:input path="firsname" /></td>
			</tr>
			<tr>
				<td>Lastname</td>
				<td><form:input path="lastname" /></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><form:input path="address" /></td>
			</tr>
			<tr>
				<td><form:hidden path="id"/></td>
				<td><button type="submit">Save</button></td>
			</tr>
		</tbody>
	</table>
</form:form>
</body>
</html>