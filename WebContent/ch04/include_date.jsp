<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>오늘의 날짜 및 시각
<p><%=(new java.util.Date()).toLocaleString() %><!-- toLocaleString() 사용자의 문화권에 맞는 시간표기법 문자열화 -->
</body>
</html>