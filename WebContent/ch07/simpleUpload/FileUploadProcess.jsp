<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 필수 import 대상 -->
    <%@page import="com.oreilly.servlet.*" %>
    <%@page import="com.oreilly.servlet.multipart.*" %>
    <%@page import="java.util.*" %>
    <%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Information</title>
</head>
<body>
<% 
MultipartRequest multi=new MultipartRequest(request,"E:\\하여진\\jspImageUploadTest"//class 매변수
		, 5*0124*1024,"utf-8", new DefaultFileRenamePolicy());
//저장경로, 사이즈, contentType, 디폴트 설정 (중복파일이면 rename하며 뒤에 숫자를 붙여서 새로 저장함)
String title=multi.getParameter("title");
out.println("<h3> "+ title+"</h3>");

Enumeration files=multi.getFileNames();
while(files.hasMoreElements()){
	String name=(String) files.nextElement();
	String filename=multi.getFilesystemName(name);
	String original=multi.getOriginalFileName(name);
	
	out.println("실제 파일 이름 : "+ original+"<br>");
	out.println("저장 파일 이름 : "+filename+"<br>");
}

%>


</body>
</html>