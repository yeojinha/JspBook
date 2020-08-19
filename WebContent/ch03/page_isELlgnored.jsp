<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="true"%>
<%@page isScriptingEnabled="true" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<% 
request.setAttribute("RequestAttribute","request 내장 객체"); 
%>
${requestScope.RequestAttribute}<!-- RequestAttribute 변수에 값을 출력하도록 표현 언어 ${}를 작성 -->
</body>
</html>