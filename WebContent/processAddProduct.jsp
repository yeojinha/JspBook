<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="dto.Product"%>
<%@page import="dao.ProductRepository"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

String productId=request.getParameter("productId");
String name=request.getParameter("name");
String unitPrice=request.getParameter("unitPrice");
String description=request.getParameter("description");
String manufacturer=request.getParameter("manufacturer");
String category=request.getParameter("category");
String unitsInStock=request.getParameter("unitsInStock");
String condition=request.getParameter("condition");


int price=0;
if(!unitPrice.isEmpty())
	price=Integer.valueOf(unitPrice);

long stock=0;
if(!unitsInStock.isEmpty())
	stock=Long.valueOf(unitsInStock);

ProductRepository dao=ProductRepository.getInstance();


Product newProduct =new Product();
newProduct.setProductId(productId);
newProduct.setPname(name);
newProduct.setUnitPrice(price);
newProduct.setDescription(description);
newProduct.setManufacturer(manufacturer);
newProduct.setCategory(category);
newProduct.setUnitsInStock(stock);
newProduct.setCondition(condition);

dao.addProduct(newProduct);
response.sendRedirect("products.jsp");
%>
</body>
</html>