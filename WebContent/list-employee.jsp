<%@page import="com.simplilearn.dao.EmployeeDao"%>
<%@page import="com.simplilearn.entity.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee List</title>
</head>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<body>

	<%
		List<Employee> employees = EmployeeDao.listEmployee();

		request.setAttribute("emplist", employees);
	%>

	<table style="border: 1px solid black;">
		<tr>
			<th>Id</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Salary</th>
			<th>Department</th>
		</tr>

		<c:forEach items="${emplist}" var="emp">
			<tr>
				<td>${emp.getId()}</td>
				<td>${emp.getFirstName()}</td>
				<td>${emp.getLastName()}</td>
				<td>${emp.getSalary()}</td>
				<td>${emp.getDepartment()}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>