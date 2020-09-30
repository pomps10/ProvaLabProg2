<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Consult Users</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<link rel="stylesheet" href="index.css">

</head>
<body>
	<h1>Welcome to consult page</h1>
	<h3>Type the name and search an user</h3>
	<form action="PostConsult" method="post">
		<div class="form-group row">
			<label for="firstName" class="col-4 col-form-label">First
				name</label>
			<div class="col-8">
				<input id="firstName" name="firstName" placeholder="Felipe"
					type="text" class="form-control" required>
			</div>
		</div>
		<div class="form-group row">
			<div class="col-12">
				<button name="submit" type="submit" class="btn btn-primary">Submit</button>
			</div>
		</div>
	</form>

	<c:if test="${not empty name}">
		<div class="alert alert-danger" role="alert">${name}does not
			exist in the registration list!</div>
	</c:if>
	<c:if test="${not empty registration}">
		<div class="alert alert-info" role="alert">
			NAME: ${registration.name} <br> NAME: ${registration.email} <br>
			NAME: ${registration.cel} <br>
		</div>
	</c:if>
	<button onclick="location.href = 'index.jsp';" id="myButton"
		class="btn btn-primary">Back</button>
</body>
</html>