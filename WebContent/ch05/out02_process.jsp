<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String userid=request.getParameter("id");
String password=request.getParameter("passwd");//out2에서 name이 passwd인 것으로 부터 받음.
%>

<p> 아 이 디: <%out.println(userid);%>
<p> 비밀번호: <%out.println(password);%>
</body>
</html>