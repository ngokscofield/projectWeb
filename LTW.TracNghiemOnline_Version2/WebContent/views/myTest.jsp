<%@page import="java.util.ArrayList"%>
<%@page import="model.StatExam"%>
<%@page import="model.UserModel"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Ucan.vn</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/masterpage.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/list-exam-done.css">
</head>
<body>
<%		
	UserModel  user = (UserModel) session.getAttribute("User");
	ArrayList<StatExam> listExam = (ArrayList<StatExam>)request.getAttribute("listExam");
%>
<div id="header">
	<div id="header-placeholder">
	<a href="<%=request.getContextPath()%>/home">
		<img src="<%=request.getContextPath()%>/img/logo.png" id="ucan-logo">
	</a>
	<div id="header-content">
		<ul class="list-item-header-after-signin">			
			<li class="header-item">
				<a href="#" class="user-avatar"><%=user.getFullname() %></a>
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
				<li><a href="exam.html">Đánh giá trình độ</a></li>
				<li><a href="#">Đề thi khối trung học cơ sở</a></li>
				<li><a href="#">Đề thi khối trung học phổ thông</a></li>
				<li><a href="#">Đề thi tuyển sinh lớp 10</a></li>
				<li><a href="#">Đề thi toeic</a></li>
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
		<div class="title">
			Dưới đây là các đề thi bạn đã làm
		</div>
		<!-- <div class="list-exam-done">
			<a href="#" class="exam-list-box-detail">
				<img src="img/img-exam-detail.jpg">
				<div class="content">
					<h3 class="exam-list-header">Toeic 600 (đề 1)</h3>
				<p class="high-score">Số điểm cao nhất đạt được là <span>xxx</span></p>
				</div>
			</a>
			<div class="statistics">	
				<a href="#">Làm lại</a>
			</div>
		</div>
		<div class="list-exam-done">
			<a href="#" class="exam-list-box-detail">
				<img src="img/img-exam-detail.jpg">
				<div class="content">
					<h3 class="exam-list-header">Toeic 600 (đề 1)</h3>
				<p class="high-score">Số điểm cao nhất đạt được là <span>xxx</span></p>
				</div>
			</a>
			<div class="statistics">	
				<a href="#">Làm lại</a>
			</div>
		</div>
		<div class="list-exam-done">
			<a href="#" class="exam-list-box-detail">
				<img src="img/img-exam-detail.jpg">
				<div class="content">
					<h3 class="exam-list-header">Toeic 600 (đề 1)</h3>
				<p class="high-score">Số điểm cao nhất đạt được là <span>xxx</span></p>
				</div>
			</a>
			<div class="statistics">	
				<a href="#">Làm lại</a>
			</div>
		</div> -->
	<%for(StatExam st : listExam){ %>		
		<div class="list-exam-done">
			<a href="#" class="exam-list-box-detail">
				<img src="<%=request.getContextPath()%>/img/<%=st.getExam().getImagePath()%>">
				<div class="content">
					<h3 class="exam-list-header"><%=st.getExam().getTitle() %></h3>
				<p class="high-score">Số điểm cao nhất đạt được là <span><%=st.getHighScore()%></span></p>
				</div>
			</a>
			<div class="statistics">	
				<a href="<%=request.getContextPath()%>/exam?id=<%=st.getExam().getExamId()%>">Làm lại</a>
			</div>
		</div>
	<%}%>
	</div>
</div>
<div id="footer">
	<div id="promotion-content">Gia hạn nhận khuyến mãi <b>MUA 1 TẶNG 1 + 20GB</b> tài liệu</div>|
	<div id="promotion-time"> Còn lại <b>12 GIỜ : 00 PHÚT : 00 GIÂY</b></div>
	<div id="promotion-renewal">GIA HẠN NGAY</div>
</div>
</body>
<script type="text/javascript" src="js/index.js"></script>
</html>