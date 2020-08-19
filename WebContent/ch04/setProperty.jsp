<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%!int stId=19930811;%>
</head>
<body>

<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request"/>
<jsp:setProperty name="person" property="id" value="<%=stId+100 %>"/>
<jsp:setProperty name="person" property="name" value="하여진"/>
<p> 아이디: <%out.println(person.getId()); %>
<p> 이 름: <%out.println(person.getName()); %>
</body>
</html>