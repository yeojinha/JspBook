<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>이 파일은 first.jsp입니다.</h3>
	<jsp:include page="second.jsp"> <!-- 파일명 -->
	<jsp:param name="date" value="<%=new java.util.Date()%>" /><!-- 매개변수명과 값 -->
	</jsp:include><!--  -->
	<!--  jsp:include page만나면 실행하고 param 전달 그리고 second.jsp 끝나면 14행부터 다시 실행. -->
	<p>Java Server Page</p>
</body>
</html>