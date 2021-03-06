<%@page import="model.Exam"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ExamDAO"%>
<%@page import="model.UserModel"%>
<%@page import="dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Ucan.vn</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/masterpage.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/exam-list-detail.css">
</head>
<body>
	<%		
		UserModel model = (UserModel) session.getAttribute("User");	
		ArrayList<Exam> listExam = (ArrayList<Exam>)request.getAttribute("listExam");
	%>
	<form action="<%=request.getContextPath()%>/logout" method="get" id="logout">		
	</form>
	<div id="header">
		<div id="header-placeholder">
			<a href="<%=request.getContextPath()%>/home"> <img src="<%=request.getContextPath()%>/img/logo.png" id="ucan-logo">
			</a>
			<div id="header-content">
				<%if(model != null){%>				
				<ul class="list-item-header-after-signin">
					<li class="header-item"><a href="<%=request.getContextPath()%>/userInfor" class="user-avatar"><%=model.getFullname()%></a></li>
					<li class="header-item "><a href="#" class="card-item-buy">Mua thẻ</a></li>
					<li class="header-item"><a href="#">Nạp thẻ</a></li>
					<li class="header-item"><a href="#">Giới thiệu</a></li>
					<li class="header-item" ><a href="#" onclick="logout()">Thoát</a></li>
				</ul>
				<%} else { %>
				<ul class="list-item-header-before-siginin">
					<li class="header-item"><a href="#">Giới thiệu</a></li> |
					<li class="header-item"><a href="#" class="card-item-buy">Mua thẻ</a></li> |
					<li class="header-item"><a href="<%=request.getContextPath()%>/login">Đăng nhập</a></li> |
					<li class="header-item"><a href="<%=request.getContextPath()%>/register">Đăng ký</a></li>
				</ul>
				<% }%>
			</div>
		</div>

	</div>
	<div id="front-menu">
		<div id="toolbar">
			<ul id="front-menu-list">
				<li class="front-menu-item home-menu-item"><a href="#"><img
						src="<%=request.getContextPath() %>/img/home.png" width="16"></a></li>
				<li class="front-menu-item"><a href="#">Học tây</a></li>
				<li class="front-menu-item"><a href="#">Khóa học</a></li>
				<li class="front-menu-item"><a href="#">Bài học</a></li>
				<li class="front-menu-item"><a href="#">Luyện nói</a></li>
				<li class="front-menu-item"><a href="#">Luyện nghe</a></li>
				<li class="front-menu-item"><a href="#">Truyện</a></li>

				<li class="front-menu-item"><a href="#">Tài liệu</a></li>
				<li class="front-menu-item" id="item-fixed-exam"><a href="#"
					id="item-exam">Đề thi</a>
					<ul class="dropdown" id="dropdown-exam">
					<%if(model != null){ %>
						<li><a href="<%=request.getContextPath()%>/mytest">Bài test của tôi</a></li>	
					<%}%>
						<li><a href="#">Đề thi toeic</a></li>
						<li><a href="exam.jsp">Đánh giá trình độ</a></li>
						<li><a href="#">Đề thi khối trung học cơ sở</a></li>
						<li><a href="#">Đề thi khối trung học phổ thông</a></li>
						<li><a href="#">Đề thi tuyển sinh lớp 10</a></li>						
					</ul>
				</li>
				<li class="front-menu-item"><a href="#">Từ vựng</a></li>
				<li class="front-menu-item"><a href="#">Thư viện</a></li>
				<li class="front-menu-item"><a href="#">Trường lớp</a></li>
			</ul>
		</div>
	</div>
	<div id="main">
		<div id="main-content">
			<div id="exam-list">
				<img src="<%=request.getContextPath()%>/img/img-background-exam.jpg" alt="images">
				<h2 class="exam-list-header">Danh sách bài test</h2>
				<div id="exam-filter-box">
					<ul id="exam-fliter-menu">
						<li class="exam-filter-selected">
							<a href="#">Mới nhất</a>
						</li>
						<li>
							<a href="#">Làm nhiều nhất</a>
						</li>
					</ul>
				</div>
				
				<div id="exam-list-box">
				<% 					
					for(Exam e : listExam){%>
						<a href="<%=request.getContextPath()%>/exam?id=<%=e.getExamId() %>" class="exam-list-box-detail">					
						<img src="<%=request.getContextPath()%>/img/<%=e.getImagePath() %>">
						<h3 class="exam-list-header"><%=e.getTitle() %></h3>
						<ul class="statistics">
							<li>								
							</li>
							<li>
								<span class="icon-view">
									<img src="<%=request.getContextPath()%>/img/icon-view.png">
								</span>
								<span class="number">20000</span>
								<span class="text"> xem</span>
							</li>
							<li>
								<span class="icon-view"><img src="<%=request.getContextPath()%>/img/icon-person-small.png"></span>
								<span class="number">1000</span>
								<span class="text"> làm</span>
							</li>
						</ul>
					</a>
				
				<%}%>					
				</div>
			</div>
			<div id="category-box">
				<div id="search-exam">
					<input type="text" name="search_exam" placeholder="Search test...">
				</div>
				<div id="list-item">
					<ul>
						<li><a href="exam.jsp">Đánh giá trình độ</a></li>
						<li><a href="#">Đề thi khối trung học cơ sở</a></li>
						<li><a href="#">Đề thi khối trung học phổ thông</a></li>
						<li><a href="#">Đề thi tuyển sinh lớp 10</a></li>
						<li><a href="#">Đề thi toeic</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
		</div>
	</div>
	<div id="footer">
		<div id="promotion-content">
			Gia hạn nhận khuyến mãi <b>MUA 1 TẶNG 1 + 20GB</b> tài liệu
		</div>
		|
		<div id="promotion-time">
			Còn lại <b>12 GIỜ : 00 PHÚT : 00 GIÂY</b>
		</div>
		<div id="promotion-renewal">GIA HẠN NGAY</div>
	</div>
</body>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/index.js"></script>
</html>