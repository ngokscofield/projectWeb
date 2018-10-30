<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<div id="main-left">
	<ul>		
		<li id="desk"><a href="<%=request.getContextPath()%>/manageAccount">Quản lý tài khoản</a></li>
		<li id="report"><a href="<%=request.getContextPath()%>/manageQuestion">Quản lý câu hỏi</a></li>
		<li id="recruitment"><a href="#">Quản lý đề thi</a><div class="spacing"></div><div class="arr-down"></li>	
		<div id="dropdown">	
		<li id="employee-profile">
			<a href="#">Báo cáo thống kê</a>
			<div class="spacing"></div>
			<div class="arr-down"></div>
		</li>
		<ul id="dropdown-profile">
			<li><a href="#">Thống kê điểm</a></li>
			<li><a href="#">Hợp đồng</a></li>			
		</ul>
		</div>
	</ul>
</div>