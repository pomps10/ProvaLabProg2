<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Register list</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<link rel="stylesheet" href="index.css">

</head>
<body>
	<div class="alert alert-success" role="alert">The user
		${registered.name} has been registered</div>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">First</th>
				<th scope="col">Last</th>
				<th scope="col">Handle</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${registersArray}" var="registerItem">
				<tr>
					<th scope="row">${registerItem.index}</th>
					<td>${registerItem.name}</td>
					<td>${registerItem.email}</td>
					<td>${registerItem.cel}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<button onclick="location.href = 'index.jsp';" id="myButton"
		class="btn btn-primary">Back</button>
</body>
</html>