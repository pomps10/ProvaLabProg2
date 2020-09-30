<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Home</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<link rel="stylesheet" href="index.css">

</head>
<body>
	<div class="container-fluid">
		<h1>Hello!</h1>
		<h3>
			Please, fill in the fields below to raise a user
			</h3>
			<form action="PostRegistration" method="post" class="centerDiv">
				<div class="form-group row">
					<label for="firstName" class="col-4 col-form-label">First
						name</label>
					<div class="col-8">
						<input id="firstName" name="firstName" placeholder="Felipe"
							type="text" class="form-control" required>
					</div>
				</div>
				<div class="form-group row">
					<label for="email" class="col-4 col-form-label">Email</label>
					<div class="col-8">
						<input id="email" name="email" placeholder="felipe@hotmail.com"
							type="email" class="form-control" required>
					</div>
				</div>
				<div class="form-group row">
					<label for="chelphone" class="col-4 col-form-label">Celphone</label>
					<div class="col-8">
						<input id="celphone" name="celphone" placeholder="19 9973213"
							type="text" class="form-control" required>
					</div>
				</div>
				<div class="form-group row">
					<div class="col-12">
						<button name="submit" type="submit" class="btn btn-primary">Submit</button>
					</div>
				</div>
			</form>
			<button onclick="location.href = 'consult.jsp';" id="myButton"
				class="btn btn-primary">Consult</button>

			<c:if test="${not empty email}">
				<div class="alert alert-danger" role="alert">${email}is
					already registered, try again please.</div>
			</c:if>
	</div>


</body>
</html>