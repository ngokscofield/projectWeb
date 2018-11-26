<%@page import="model.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.UserModel"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/index.css">	
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/addQuestion.css">
	<meta charset="utf-8">
</head>
<body>
<%
	UserModel user = (UserModel) session.getAttribute("User");		
	ArrayList<Category> listCategory  = (ArrayList<Category>)request.getAttribute("listCategory");
	
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
		<div id="update-infor-user">
			<p>Thêm câu hỏi</p>
			<form class="form" method="post" action="<%=request.getContextPath()%>/addQuestion">
			<div class="form-input">
					<label class="label">Chọn part</label>
					<select name="partId">
						<%for(Category c : listCategory){ %>
						<option value="<%=c.getCategoryId()%>"><%=c.getTitle() %></option>
						<%} %>
					</select>
				</div>
				<div class="form-input">
					<label>Câu hỏi</label>
					<input type="text" name="qsContent" id="qsContent" value="">
				</div>
				<div class="form-input">
					<label class="label">Đáp án 1</label>
					<input type="text" name="answer1" id="answer1" value="">
				</div>
				<div class="form-input">
					<label class="label">Đáp án 2</label>
					<input type="text" name="answer2" id="answer2" value="">
				</div>
				<div class="form-input">
					<label class="label">Đáp án 3</label>
					<input type="text" name="answer3" id="answer3" value="">
				</div>
				<div class="form-input">
					<label class="label">Đáp án 4</label>
					<input type="text" name="answer4" id="answer4" value="">
				</div>
				<div class="form-input">
					<label class="label">Đán án đúng</label>
					<select name="right-answer">
						<option value="1">ĐA 1</option>
						<option value="2">ĐA 2</option>
						<option value="3">ĐA 3</option>
						<option value="4">ĐA 4</option>
					</select>
				</div>
				<input type="submit" name="" value="Thêm mới" class="submit-form">
			</form>
			
		</div>	
	</div>
	</div>
	
</body>
</html>