<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Sign Up</title>
		<jsp:include page="basic.jsp"></jsp:include>
	</head>
	<body>
		<div id="signup">
			<div class="container">
				<h1>Register</h1>
				<hr>
				<c:if test="${not empty error}" >
					${error}
				</c:if>
				<form class="formValidator" method="post" action="signup">
					<div class="form-group">
						<label for="userName">User Name:<input type="text" class="form-control" id="userName" placeholder="Username" name="userName"></label>
					</div>
					<div class="form-group">
						<label for="name">Full Name:<input type="text" class="form-control" id="name" placeholder="Fullname" name="fName"></label>
					</div>
					<div class="form-group">
						<label for="email">Email:<input type="email" class="form-control" id="email" placeholder="Email" name="email"></label>
					</div>
					<div class="form-group">
						<label for="bDate">Birth Date:<input type="date" class="form-control" id="bdate" placeholder="Birth date" name="bdate"></label>
					</div>
					<div class="form-group">
						<label for="pwd">Password:<input type="password" class="form-control" id="password" placeholder="Password" name="password"></label>
					</div>
					<div class="form-group">
						<label for="pwd">Confirm Password:<input type="password" class="form-control" id="cpwd" placeholder="Confirm password" name="cpassword"></label>
					</div>
					<button type="submit" class="btn btn-success">Register</button>
				</form>
			</div>
		</div>
	</body>
</html>