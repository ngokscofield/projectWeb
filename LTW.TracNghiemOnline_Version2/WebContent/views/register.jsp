<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/masterpage.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/register.css">
</head>
<body>
<div id="header">
	<div id="header-placeholder">
		<a href="<%=request.getContextPath()%>/home"><img src="<%=request.getContextPath()%>/img/logo.png" id="ucan-logo"></a>
		<div id="header-content">
		<ul>
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
				<a href="#">Đăng ký</a>
			</li>
		</ul>
	</div>
	</div>	
	
</div>
<div id="content">
	<div id="register-box">
		<div id="login-by-facebook">ĐĂNG NHẬP BẰNG FACEBOOK</div>
		<div class="divider">Hoặc</div>
		<form  method="post" onsubmit="return validate()" action="<%=request.getContextPath()%>/register" >
			<div class="front-end-form">
				
				<input type="text" name="name" id="name" placeholder="Họ và tên" class="register-form-element" required="true">
			
				<input type="email" name="email" id="email" placeholder="Mail" class="register-form-element" required="true">
			
			
				<input type="number" name="phone" id="phone" placeholder="Số điện thoại" class="register-form-element" required="true">
			
				<input type="password" name="password" id="password" placeholder="Mật khẩu" class="register-form-element" required="true">
			
				<input type="password" name="confirm_password" id="confirm_password" placeholder="Nhập lại mật khẩu" class="register-form-element" required="true">
			
				<input type="submit" value="đăng ký thành viên" id="submit">
				
			</div>
		</form>
		<div id="login-ucan">
			Bạn đã có tài khoản? <span><a href="<%=request.getContextPath()%>/login">Đăng nhập</a></span>
		</div>
	</div>
</div>
<div id="footer">
	<div id="promotion-content">Gia hạn nhận khuyến mãi <b>MUA 1 TẶNG 1 + 20GB</b> tài liệu</div>|
	<div id="promotion-time"> Còn lại <b>12 GIỜ : 00 PHÚT : 00 GIÂY</b></div>
	<div id="promotion-renewal">ĐĂNG KÝ NGAY</div>
</div>
</body>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/validate.js"></script>
</html>