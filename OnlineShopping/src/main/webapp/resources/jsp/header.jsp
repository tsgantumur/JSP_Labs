<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ct" uri="/WEB-INF/CustomTag.tld"%>
<div id="header">
	<header>
		<div class="col-sm-1">
			<img src="resources/image/games_home.png" alt="No image" />
		</div>
		<div class="col-sm-4">
			<div id="search" class="search">
				<input type="text" name="search">
				<button type="button" class="button-search">
					<span class="glyphicon glyphicon-search"></span>
				</button>
			</div>

		</div>
		<div class="col-sm-3">
			<div id="cart">
				<a href="orderList.do"><img src="resources/image/cart.png" /><c:choose><c:when test="${not empty sessionScope['cart']}"><span>${sessionScope['cart'].size}</span></c:when><c:otherwise><span>0</span></c:otherwise></c:choose>
				</a>
			</div>
			<div>
				<span id="cart-total" class="cart-total"> <ct:span fontWeight="700" color="#505050" fontSize="15px !important" text="${sessionScope['cart'].money}$"/> </span>
			</div>
			<c:choose>
				<c:when test="${not empty sessionScope['user']}">
					<a href='<c:url value="profile"/>'><img alt="user" src="resources/image/user.png"/></a>
					<a href='<c:url value="login.do"/>'>Logout</a>
				</c:when>
				<c:otherwise>
					<a href='<c:url value="login.do"/>'>Login</a>
				</c:otherwise>
			</c:choose>
			<div></div>
		</div>
	</header>
</div>