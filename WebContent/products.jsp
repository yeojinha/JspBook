<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository"
	scope="session" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" /><!--  -->
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>
	<%
		List<Product> listOfProducts = productDAO.getAllProducts();
	%>
	<div class="container">
		<div class="row" align="center">
			<%
				for (Product pdt : listOfProducts) {
					
			%>
			<div class="col-md-4">
				<h3><%=pdt.getPname()%></h3>
				<p><%=pdt.getDescription()%>
				<p><%=pdt.getUnitPrice()%>원
				<p> <a href="./product.jsp?id=<%=pdt.getProductId()%>"
				class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>
			</div>
			<%
				}/*
				액션태그
				1. forward 다른 페이지로의 이동과 같은 페이지 흐름을 제어(go to문같은 그러나 다른 페이지로 이동한다.).
				2. include 외부 페이지의 내용을 포함하거나 페이지를 모듈화한다. (페이지를 그냥 출력시켜버림 모듈화).
				3. useBean JSP 페이지에 자바빈즈를 설정.
				4. setProperty 자바빈지의 프로퍼티 값을 설정.
				5. getProperty 자바빈즈의 프로퍼티 값을 얻음.
				6. param <jsp:param/> <jsp:forward>, <jsp:include>, <jsp:plugin> 태그에 인자를 추가함.
				7. plugin <jsp:plugin/> 웹 브라우저에 자바 애플릿을 실행,  자바 플러그인에 대한 OBJECT 또는 EMBED 태그를 만드는 브라우저별 코드를 생성.
				8. element <jsp:element/> 동적 XML 요소를 설정.
				9. attribute <jsp:attribute/> 동적으로 정의된 XML 요소의 속성을 설정.
				10. body <jsp:body/> 동적으로 정의된 XML 요소의 몸체를 설정.
				11. text <jsp:text/> JSP 페이지 및 문서에서 템플릿 텍스트를 작성.
				*/
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>