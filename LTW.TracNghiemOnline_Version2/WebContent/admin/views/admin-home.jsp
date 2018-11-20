<%@page import="model.UserModel"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/index.css">
	<meta charset="utf-8">
</head>
<body>
<%
	UserModel user = (UserModel) session.getAttribute("User");	
	if(user.getRole()==0){
		response.sendRedirect(request.getContextPath()+"/home");
	}
%>
<div id="header">
	<div id="category-icon"></div>
	<a href="#">
		<div id="logo"></div>
	</a>
	<div id="app-icon"></div>
	<div id="header-search">
		<div id="search-icon"></div>
		<input type="text" name="input-search" id="input-search" placeholder="Tìm kiếm nhanh...">
		<div id="setting-icon"></div>
	</div>

	<div id="spacing"></div>
<!-- 	<div id="old-version">Làm việc với phiên bản cũ</div> -->
	<div id="notify-icon"></div>
	<div id="user-icon"><%=user.getFullname() %></div>
	</div>
</div>
</div>
<div id="main">
	<jsp:include page="./main-left.jsp"></jsp:include>
	
	<div id="main-content">		
	</div>
	</div>
</body>
</html>