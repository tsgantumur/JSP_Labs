<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Games</title>
<jsp:include page="basic.jsp"></jsp:include>

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div>
		<section>
			<div id="featureProduct">
				<div class="rowProduct">
					<c:forEach items="${products}" var="product" begin="0" end="8">
						<div class="information">
							<a href="productDetail.do?productId=${product.productId}"><img alt="${product.productName}" src="resources/image/${product.firstImage}" width="300"/></a>
							<div class="description">
								<h4>${product.productName}</h4>
								<p>${product.price}$</p>
							</div>
							<div class="detailBtn">
								<div>
									<c:if test="${product.count > 0}"><a href="product.do?addCart=${product.productId}">Add To Cart</a></c:if>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</section>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>