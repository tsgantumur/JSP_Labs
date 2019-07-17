<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>login</title>
		<jsp:include page="basic.jsp"></jsp:include>
	</head>
	<body>
		<div id="login">

			<form action="login.do" method="post">
				<div class="container">
					<h1> Sign In </h1>
					<hr>
					<div class="form-group">
						<label for="username">Username:</label> <input type="text"
							class="form-control" id="username" placeholder="Username" name="username" value="${cookie.username.value}"  required>
					</div>
					<div class="form-group">
						<label for="password">Password:</label> <input type="password"
							class="form-control" id="password" placeholder="Password" name="password" required>
					</div>
					<div class="checkbox">
						<label><input type="checkbox" name="rememberMeChk"
									  <c:if test="${not empty cookie.username.value}">checked</c:if>
						/>Keep me signed in</label>
					</div>
					<button type="submit" class="btn btn-success">Submit</button>

				</div>
				<div class="container">
					<h1>Register</h1>
					<hr>
					<div class="divider-break">
						<p>Not member yet?</p>
						<p>Be a member and enjoy shopping!</p>
						<a href="signup" class="btn btn-primary">Register</a>
					</div>
				</div>

			</form>
			<c:if test="${not empty error}">
				<p class="error">${error}</p>
			</c:if>
			</div>

	</body>
</html>