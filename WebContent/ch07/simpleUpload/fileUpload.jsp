<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload</title>
</head>
<body>
<form method="post" enctype="multipart/form-data" action="FileUploadProcess.jsp"><!-- action 이루어짐 -->
	<p> 제목 : <input type="text" name="title">
	<p> 파일 : <input type="file" name="fileName"><!-- 파일을 올릴 때는 type을 file로  -->
	<p> <input type="submit" value="submit">
</form>
</body>
</html>