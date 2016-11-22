<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Task Management</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap-theme.min.css" />
<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
</head>
<body>
	<h2>Task Management</h2>
	<div id="header">
		<h2>
			<a href="../index.html">SpiderHub</a>
		</h2>
	</div>
	<table class = "table table-hover">
		<tr>
			<th>ID</th>
			<th>TaskName</th>
			<th>Description</th>
			<th>createDate</th>
			<th>startDate</th>
			<th>endDate</th>
			<th>Operations</th>
			<c:forEach items="${tasks}" var="task">
				<tr>
					<td>${task.id}</td>
					<td>${task.taskName}</td>
					<td>${task.taskDescription}</td>
					<td>${task.createDate}</td>
					<td>${task.startDate}</td>
					<td>${task.endDate}</td>
					<td><a href="view.html?id=${task.id}">View</a> 
				</tr>
			</c:forEach>
		</tr>
	</table>
	<p>
		<a href="add.html">Add new Task</a>
	</p>
</body>
</html>