<%@page import="model.UserModel"%>
<%@page import="dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Ucan.vn</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/homepage.css">
</head>
<body>
	<%		
		UserModel model = (UserModel) session.getAttribute("User");	
	%>
	<form action="<%=request.getContextPath() %>/logout" method="get" id="logout">		
	</form>
	<div id="header">
		<div id="header-placeholder">
			<a href="#"> <img src="<%=request.getContextPath() %>/img/logo.png" id="ucan-logo">
			</a>
			<div id="header-content">
				<%if(model != null){%>				
				<ul class="list-item-header-after-signin">
					<li class="header-item"><a href="<%=request.getContextPath()%>/userInfor" class="user-avatar"><%=model.getFullname() %></a></li>
					<li class="header-item "><a href="#" class="card-item-buy">Mua
							thẻ</a></li>
					<li class="header-item"><a href="#">Nạp thẻ</a></li>
					<li class="header-item"><a href="#">Giới thiệu</a></li>
					<li class="header-item" ><a href="#" onclick="logout()">Thoát</a></li>
				</ul>
				<%} else { %>
				<ul class="list-item-header-before-siginin">
					<li class="header-item"><a href="#">Giới thiệu</a></li> |
					<li class="header-item"><a href="#" class="card-item-buy">Mua
							thẻ</a></li> |
					<li class="header-item""><a href="<%=request.getContextPath()%>/login">Đăng nhập</a></li> |
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
					<%
					if(model != null){ %>
						<li><a href="<%=request.getContextPath()%>/mytest">Bài test của tôi</a></li>	
					<% }%>
						<li><a href="<%=request.getContextPath()%>/exam-list-detail">Đề thi toeic</a></li>
						<li><a href="#">Đánh giá trình độ</a></li>
						<li><a href="#">Đề thi khối trung học cơ sở</a></li>
						<li><a href="#">Đề thi khối trung học phổ thông</a></li>
						<li><a href="#">Đề thi tuyển sinh lớp 10</a></li>
						
					</ul></li>
				<li class="front-menu-item"><a href="#">Từ vựng</a></li>
				<li class="front-menu-item"><a href="#">Thư viện</a></li>
				<li class="front-menu-item"><a href="#">Trường lớp</a></li>
			</ul>
		</div>
	</div>
	<div id="main">
		<div id="main-content">
			<div id="cover-box">
				<img src="<%=request.getContextPath() %>/img/header.jpg">
				<div id="cover-content">
					<strong>Học tiếng anh giao tiếp qua video với giáo viên
						đến từ Anh, Mỹ, Úc, Việt Nam...</strong>
					<ul>
						<li>Cùng hơn 50 khóa học tương tác và hơn 500 bài luyện nghe</li>
						<li>20GB tài liệu học tiếng Anh được Ucan sưu tầm trong 5 năm</li>
						<li>400 giờ tập nói thỏa thích không giới hạn</li>
					</ul>
					<div id="renewal">
						<a href="#">Gia hạn tài khoản ngay</a>
					</div>
				</div>
			</div>
			<div id="ucan-featured-box">
				<h2 class="box-title">Các chuyên mục tiêu biểu trên Ucan</h2>
				<div id="ucan-featured">
					<a href="#" class="ucan-featured-item">
						<div class="ucan-featured-item-img"></div>
						<div class="ucan-featured-item-count">200+ bài</div>
						<div class="ucan-featured-item-content">
							<h3 class="ucan-featured-item-title">Luyện nói với giáo viên
								Anh, Mỹ, Úc,...</h3>
							<div class="ucan-featured-item-description">400 giờ luyện
								nói sẽ giúp bạn nắm vững và giao tiếp thành thạo được 200 chủ đề
								thông dụng</div>
						</div>
					</a> <a href="#" class="ucan-featured-item">
						<div class="ucan-featured-item-img"></div>
						<div class="ucan-featured-item-count">200+ bài</div>
						<div class="ucan-featured-item-content">
							<h3 class="ucan-featured-item-title">Luyện nói với giáo viên
								Anh, Mỹ, Úc,...</h3>
							<div class="ucan-featured-item-description">400 giờ luyện
								nói sẽ giúp bạn nắm vững và giao tiếp thành thạo được 200 chủ đề
								thông dụng</div>
						</div>
					</a> <a href="#" class="ucan-featured-item">
						<div class="ucan-featured-item-img"></div>
						<div class="ucan-featured-item-count">200+ bài</div>
						<div class="ucan-featured-item-content">
							<h3 class="ucan-featured-item-title">Luyện nói với giáo viên
								Anh, Mỹ, Úc,...</h3>
							<div class="ucan-featured-item-description">400 giờ luyện
								nói sẽ giúp bạn nắm vững và giao tiếp thành thạo được 200 chủ đề
								thông dụng</div>
						</div>
					</a> <a href="#" class="ucan-featured-item">
						<div class="ucan-featured-item-img"></div>
						<div class="ucan-featured-item-count">200+ bài</div>
						<div class="ucan-featured-item-content">
							<h3 class="ucan-featured-item-title">Luyện nói với giáo viên
								Anh, Mỹ, Úc,...</h3>
							<div class="ucan-featured-item-description">400 giờ luyện
								nói sẽ giúp bạn nắm vững và giao tiếp thành thạo được 200 chủ đề
								thông dụng</div>
						</div>
					</a> <a href="#" class="ucan-featured-item">
						<div class="ucan-featured-item-img"></div>
						<div class="ucan-featured-item-count">200+ bài</div>
						<div class="ucan-featured-item-content">
							<h3 class="ucan-featured-item-title">Luyện nói với giáo viên
								Anh, Mỹ, Úc,...</h3>
							<div class="ucan-featured-item-description">400 giờ luyện
								nói sẽ giúp bạn nắm vững và giao tiếp thành thạo được 200 chủ đề
								thông dụng</div>
						</div>
					</a> <a href="#" class="ucan-featured-item">
						<div class="ucan-featured-item-img"></div>
						<div class="ucan-featured-item-count">200+ bài</div>
						<div class="ucan-featured-item-content">
							<h3 class="ucan-featured-item-title">Luyện nói với giáo viên
								Anh, Mỹ, Úc,...</h3>
							<div class="ucan-featured-item-description">400 giờ luyện
								nói sẽ giúp bạn nắm vững và giao tiếp thành thạo được 200 chủ đề
								thông dụng</div>
						</div>
					</a>
				</div>
			</div>
			<div id="teachers">
				<h2>Giáo viên bản ngữ đến từ Anh, Pháp, Mỹ, Úc, Canada,...</h2>
				<div id="list-teachers">
					<div class="teacher-item">
						<div class="teacher-avatar"></div>
						<div class="teacher-infor">
							<div class="teacher-name">Scofiel Nguyen</div>
							<div class="teacher-national">Quốc tịch: Arapdaudi</div>
						</div>
					</div>
					<div class="teacher-item">
						<div class="teacher-avatar"></div>
						<div class="teacher-infor">
							<div class="teacher-name">Scofiel Nguyen</div>
							<div class="teacher-national">Quốc tịch: Viet Nam</div>
						</div>
					</div>
					<div class="teacher-item">
						<div class="teacher-avatar"></div>
						<div class="teacher-infor">
							<div class="teacher-name">Scofiel Nguyen</div>
							<div class="teacher-national">Quốc tịch: Iran</div>
						</div>
					</div>
					<div class="teacher-item">
						<div class="teacher-avatar"></div>
						<div class="teacher-infor">
							<div class="teacher-name">Scofiel Nguyen</div>
							<div class="teacher-national">Quốc tịch: Syria</div>
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