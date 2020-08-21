<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="out02_process.jsp" method="post"><!-- action 이동장소 -->
		<p>
			아 이 디 : <input type="text" name="id">
		<p>
			비밀번호 : <input type="text" name="passwd">
		<p>
			<input type="submit" value="전송"><!-- action 행위는 submit임. -->
	</form>
</body>
</html>