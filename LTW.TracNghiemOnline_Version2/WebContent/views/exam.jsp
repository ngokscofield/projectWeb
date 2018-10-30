<%@page import="model.Exam"%>
<%@page import="dao.ExamDAO"%>
<%@page import="model.UserModel"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Ucan.vn</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/masterpage.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/exam.css">
</head>
<body>
	<%	
		String examId = request.getParameter("id");		
		UserModel model = (UserModel) session.getAttribute("User");		
	%>
<div id="header">
	<div id="header-placeholder">
	<a href="<%=request.getContextPath()%>/home">
		<img src="<%=request.getContextPath()%>/img/logo.png" id="ucan-logo">
	</a>
	<div id="header-content">
		<%if(model != null){  %>
		<ul class="list-item-header-after-signin">			
			<li class="header-item">
				<a href="#" class="user-avatar"><%=model.getFullname() %></a>
			</li>
			<li class="header-item ">
				<a href="#" class="card-item-buy">Mua thẻ</a>
			</li>
			<li class="header-item">
				<a href="#">Nạp thẻ</a>
			</li>
			<li class="header-item">
				<a href="#">Giới thiệu</a>
			</li>
			<li class="header-item">
				<a href="#">Thoát</a>
			</li>
		</ul>
		<%} else { %>
		<ul class="list-item-header-before-siginin">		
			<li class="header-item">
				<a href="#">Giới thiệu</a>
			</li>
			|
			<li class="header-item">
				<a href="#" class="card-item-buy">Mua thẻ</a>
			</li>
			|
			<li class="header-item">
				<a href="<%=request.getContextPath()%>/login">Đăng nhập</a>
			</li>
			|
			<li class="header-item">
				<a href="<%=request.getContextPath()%>/register">Đăng ký</a>
			</li>
		</ul>
		<% }  %>
	</div>
	</div>
	
</div>
<div id="front-menu">
	<div id="toolbar">
		<ul id="front-menu-list">
			<li class="front-menu-item home-menu-item">
				<a href="<%=request.getContextPath()%>/home"><img src="<%=request.getContextPath()%>/img/home.png" width="16"></a>
			</li>
			<li class="front-menu-item">
				<a href="#">Học tây</a>
			</li>
			<li class="front-menu-item">
				<a href="#">Khóa học</a>
			</li>
			<li class="front-menu-item">
				<a href="#">Bài học</a>
			</li>
			<li class="front-menu-item">
				<a href="#">Luyện nói</a>
			</li>
			<li class="front-menu-item">
				<a href="#">Luyện nghe</a>
			</li>
			<li class="front-menu-item">
				<a href="#">Truyện</a>				
			</li>
			
			<li class="front-menu-item">
				<a href="#">Tài liệu</a>
			</li>
			<li class="front-menu-item" id="item-fixed-exam">		
				<a href="#" id="item-exam">Đề thi</a>
				<ul class="dropdown" id="dropdown-exam">
			<%if(model != null){ %>
				<li><a href="<%=request.getContextPath()%>/mytest">Bài test của tôi</a></li>	
			<%}%>
				<li><a href="exam.html">Đánh giá trình độ</a></li>
				<li><a href="#">Đề thi khối trung học cơ sở</a></li>
				<li><a href="#">Đề thi khối trung học phổ thông</a></li>
				<li><a href="#">Đề thi tuyển sinh lớp 10</a></li>
				<li><a href="<%=request.getContextPath()%>/exam-list-detail">Đề thi toeic</a></li>
				</ul>
			</li>
			<li class="front-menu-item">
				<a href="#">Từ vựng</a>
			</li>
			<li class="front-menu-item">
				<a href="#">Thư viện</a>
			</li>
			<li class="front-menu-item">
				<a href="#">Trường lớp</a>
			</li>
		</ul>
	</div>
</div>
<div id="main">
	<div id="main-content">
		<div id="top-panel">
			<h1>Bài kiểm tra kiến thức cơ bản</h1>
			<p class="summary">Bài kiểm tra kiến thức cơ bản</p>
			<p>&nbsp;</p>
		</div>
		<div id="description">
			<p style="text-align: center;"><b>Bài kiểm tra gồm có 2 phần</b>: Grammar (ngữ pháp) và Listening (phần nghe). <b>Mỗi phần 100 câu</b>.</p>
			<p style="text-align: center;"><b>Thời gian làm bài: 60 phút</b> (50 phút phần Grammar và 10 phút phần Listening)</p>	
			<p>&nbsp;</p>			
		</div>
		<div id="do-test">
			<div>
			<a href="<%=request.getContextPath()%>/exam-listening-detail?id=<%=examId%>">Làm bài</a>
			</div>
		</div>
	</div>
	<div id="main-footer">
		
	</div>
</div>
<div id="footer">
	<div id="promotion-content">Gia hạn nhận khuyến mãi <b>MUA 1 TẶNG 1 + 20GB</b> tài liệu</div>|
	<div id="promotion-time"> Còn lại <b>12 GIỜ : 00 PHÚT : 00 GIÂY</b></div>
	<div id="promotion-renewal">GIA HẠN NGAY</div>
</div>
</body>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/index.js"></script>
</html>