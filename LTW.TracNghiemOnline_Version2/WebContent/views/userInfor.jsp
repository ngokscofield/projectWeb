<%@page import="model.UserModel"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Ucan.vn</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/masterpage.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/updateInfor.css">
</head>
<body>
<%
	UserModel user = (UserModel) session.getAttribute("User");	
%>
<form action="<%=request.getContextPath() %>/logout" method="get" id="logout">		
</form>
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
				<a href="#" onclick="logout()">Thoát</a>
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
			<%if(user != null){ %>
				<li><a href="<%=request.getContextPath()%>/mytest">Bài test của tôi</a></li>	
			<%}%>
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
		<div id="toolbar-content-left">
			<ul id="list-item-content">
				<li><a href="#" id="btn-about">Tổng quan</a></li>
				<li><a href="#" id="btn-basic-infor">Thông tin cơ bản</a></li>
				<li><a href="#" id="btn-password">Mật khẩu</a></li>				
			</ul>
		</div>	
		<div id="infor-user-detail">
			<h2>Thông tin cá nhân cơ bản</h2>
			<div class="detail">
				<div class="avatar" >
				<img src="<%=request.getContextPath()%>/img/teacher1.jpg" alt="ảnh đại diện" >
				</div>
				<div class="user-infor">
					<h4><%=user.getFullname() %></h4>
					<i><%=user.getEmail()%></i>
					<div class="button">
						<a href="#" id="button-change-password">Đổi mật khẩu</a>
						<a href="#" id="button-update-infor">Sửa thông tin</a>
					</div>
				</div>

			</div>
			<h2>Thông tin bổ sung</h2>
			<div class="additional-infor">
				<table>
					<tr>
						<td class="label">Ngày sinh</td>
						<td class="input"><%=user.getDateOfBirth()==null?"Chưa có":user.getDateOfBirth() %></td>
					</tr>
					<tr>
						<td class="label">Giới tính</td>
						<td class="input"><%=user.getSex()==-1?"Chưa có":user.getSex()%></td>
					</tr>
					<tr>
						<td class="label">Nghề nghiệp</td>
						<td class="input"><%=user.getJob()==null?"Chưa có":user.getJob()%></td>
					</tr>
					<tr>
						<td class="label">Số điện thoại</td>
						<td class="input"><%=user.getPhone()==null?"Chưa có":user.getPhone()%></td>
					</tr>
				</table>
			</div>
			
		</div>		

		<div id="change-password">
			<p>Nhập lại mật khẩu cũ của bạn sau đó điền mật khẩu mới</p>
			<form class="form" method="post" onsubmit="return validate()" action="<%=request.getContextPath()%>/userInfor">
				<input type="hidden" value="<%=user.getUserID()%>" name="userId">
				<input type="hidden" value="<%=user.getPassword()%>" name="password-db" id="password-db">
				<div class="form-input">
					<label>Mật khẩu cũ <span style="color: red;">(*)</span> </label>
					<input type="password" name="oldPassword" id="oldPassword" minlength="6">
				</div>
				<div class="form-input">
				<label class="label">Mật khẩu mới<span style="color: red;">(*)</span> </label>
				<input type="password" name="newPassword" id="newPassword" minlength="6">
				</div>
				<div class="form-input">
				<label class="label">Nhập lại mật khẩu<span style="color: red;">(*)</span> </label>
				<input type="password" name="re-newPassword" id="re-newPassword" minlength="6">
				</div>
				<input type="submit" name="" value="Cập nhật" class="submit-form">
			</form>
		</div>

		<div id="update-infor-user">
			<p>Cập nhật thông tin</p>
			<form class="form" method="post" onsubmit="return validateFormUpdate()" action="<%=request.getContextPath()%>/userInfor">
				<input type="hidden" value="<%=user.getUserID()%>" name="userId">
				<div class="form-input">
					<label>Tên đầy đủ<span style="color: red;">(*)</span> </label>
					<input type="text" name="fullname" id="fullname" value="<%=user.getFullname()%>">
				</div>
				<div class="form-input">
					<label class="label">Ngày sinh</label>
					<input type="date" name="dateOfBirth" id="dateOfBirth" value=<%=user.getDateOfBirth() %>>
				</div>
				<div class="form-input">
					<label class="label">Điện thoại</label>
					<input type="text" name="phone" id="phone" minlength="10" value="<%=user.getPhone()%>">
				</div>
				<div class="form-input">
					<label class="label">Nghề nghiệp</label>
					<input type="text" name="jop" id="jop" value="<%=user.getJob()==null?"":user.getJob()%>">
				</div>
				<div class="form-input">
					<label class="label">Giới tính</label>
					<select name="sex">
						<option value="0" <%=user.getSex()==0?"selected=\"selected\"":""%>>Nam</option>
						<option value="1" <%=user.getSex()==1?"selected=\"selected\"":""%>>Nữ</option>
						<option value="-1" <%=user.getSex()==-1?"selected=\"selected\"":""%>>Khác</option>
					</select>
				</div>
				<input type="submit" name="" value="Cập nhật" class="submit-form">
			</form>
			
		</div>	
		<p id="error"><%=request.getAttribute("error")==null?"":request.getAttribute("error")%></p>	
	</div>
</div>
<div id="footer">
	<div id="promotion-content">Gia hạn nhận khuyến mãi <b>MUA 1 TẶNG 1 + 20GB</b> tài liệu</div>|
	<div id="promotion-time"> Còn lại <b>12 GIỜ : 00 PHÚT : 00 GIÂY</b></div>
	<div id="promotion-renewal">GIA HẠN NGAY</div>
</div>
</body>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/index.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/form-updateInfor-user.js"></script>
</html>