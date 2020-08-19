<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page buffer="16kb" autoFlusch="true"%> <!--  autoFlush 자동으로 출력 버퍼 비움 -->
Today is: <%= new java.util.Date() %>
</body>
</html>