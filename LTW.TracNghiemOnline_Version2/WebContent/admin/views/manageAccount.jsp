<%@page import="java.util.ArrayList"%>
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
	ArrayList<UserModel> listUser = (ArrayList<UserModel>)request.getAttribute("listUser");
	int totalRecord = Integer.parseInt(request.getAttribute("record").toString());
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
	<form action="" method="post" id="frmDelAccount">		
	</form>
	
	<div id="main-content">		
	<div class="main-right-header">Quản lý tài khoản sử dụng</div>
	<div class="main-right-container">
			<div class="toolbar">
				<ul>
					<li>
						<span class="toolbar-view"></span>
						<a href="#" id="view-row-table">Xem</a>
					</li>
					<li>
						<span class="toolbar-delete"></span>
						<a href="#" id="delete-row-table" onclick="deleteAccount()">Xóa</a>
					</li>
					<li>
						<span class="toolbar-print"></span>
						<a href="#">In</a>
					</li>
					<li>
						<span class="toolbar-email"></span>
						<a href="#">Gửi email hàng loạt</a>
					</li>
					<li>
						<span class="toolbar-report"></span>
						<a href="#">Báo cáo</a>
					</li>
					<li>
						<span class="toolbar-refresh"></span>
						<a href="#">Nạp</a>
					</li>
					<li>
						<span class="toolbar-uitility"></span>
						<a href="#">Tiện ích</a>
					</li>
					<li>
						<span class="toolbar-response"></span>
						<a href="#">Phản hồi</a>
					</li>
					<li>
						<span class="toolbar-help"></span>
						<a href="#">Giúp</a>
					</li>
				</ul>
			</div>
			<div class="table-data">
				<table>
					<tbody>
						<tr class="thead">
							<td>Mã tài khoản</td>
							<td>Họ và tên</td>
							<td>Giới tính</td>
							<td>Ngày sinh</td>
							<td>Email</td>
							<td>Công việc</td>					
							<td>Số điện thoại</td>
							<td>Chức vụ</td>								
						</tr>
						<%for(UserModel u : listUser){ 
							String sex = "";	
						%>
						<tr id="<%=u.getUserID()%>" onclick="getValue(<%=u.getUserID()%>)">						
							<td><%=u.getUserID()%></td>								
							<td><%=u.getFullname()%></td>
							<%if(u.getSex()==1) {
								sex = "Nữ";
							} else if(u.getSex() == 0){
								sex = "Nam";
							} else {
								sex = "Chưa cập nhật";
							}
							%>
							<td><%=sex %></td>							
							<td><%=u.getDateOfBirth() == null? "Chưa cập nhật" : u.getDateOfBirth()%></td>
							<td><%=u.getEmail()%></td>
							<td><%=u.getJob() == null? "Chưa cập nhật" : u.getJob()%></td>							
							<td><%=u.getPhone() == null? "Chưa cập nhật" : u.getPhone()%></td>		
							<td><%=u.getRole() == 1? "admin" : "member"%></td>				
						</tr>
						<%} %>
					</tbody>
				</table>
			</div>
			

			<div id="detail-content">
			<div id="record">
				Tổng số bản ghi: <span id="record-total"><%=totalRecord %></span>
				<div class="toggle-detail-content">
					<span class="arrow-toggle"></span>
				</div>
			</div>
			</div>		
	</div>
	</div>
	</div>
</body>
<script type="text/javascript" src = "<%=request.getContextPath()%>/admin/js/manageAccount.js"></script>
</html>