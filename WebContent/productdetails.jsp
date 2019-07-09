<%@page import="com.oracle.shop.model.javabean.Users"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.oracle.shop.model.javabean.Goods"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	if(request.getAttribute("gs")==null){
	request.getRequestDispatcher("product/list").forward(request, response);
}
%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
	+ request.getServerName() + ":" + request.getServerPort()
	+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<title>商品详情页面展示</title>
<link rel="shortcut icon" href="images/favicon.jpg">
<link rel="bookmark"href="images/favicon.jpg" />
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/base.css">
<link rel="stylesheet" href="css/list.css">
<base target="_blank">
</head>
<body>
       这是     
</body>
</html>