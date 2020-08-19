<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>이 파일은 second.jsp입니다.</h3>
Today is:<%=request.getParameter("date")%><!-- first의 매개변수 명이 date인데 이 매개변수의 값을 가져옴. -->
</body>
</html>