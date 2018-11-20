<%@page import="dao.ExamDAO"%>
<%@page import="model.Exam"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
ExamDAO examDAO = new ExamDAO();
ArrayList<Exam> listExam = examDAO.getAllExam();
%>
<div id="main-left">
	<ul>		
		<li id="desk"><a href="<%=request.getContextPath()%>/manageAccount">Quản lý tài khoản</a></li>
		<li id="report"><a href="<%=request.getContextPath()%>/manageQuestion">Quản lý câu hỏi</a></li>
		
		<%-- <li id="recruitment">
			<a href="<%=request.getContextPath()%>/manageQuestion">Quản lý đề thi</a>
			<div class="spacing">
			</div><div class="arr-down">
		</li> --%>
			
		<div class="dropdown">	
		<li class="manageExam">
			<a href="#">Quản lý đề thi</a>
			<div class="spacing"></div>
			<div class="arr-down"></div>
		</li>
		<ul class="dropdown-detail">
			<%
			for(Exam e : listExam){%>
				<li><a href="<%=request.getContextPath()%>/manageExam?id=<%=e.getExamId()%>"><%=e.getTitle() %></a></li>
			<%}
			%>			
		</ul>
		</div>
					
		<div class="dropdown">	
		<li class="stat-report">
			<a href="#">Báo cáo thống kê</a>
			<div class="spacing"></div>
			<div class="arr-down"></div>
		</li>
		<ul class="dropdown-detail">
			<li><a href="#">Thống kê điểm</a></li>
			<li><a href="#">Báo cáo</a></li>			
		</ul>
		</div>
	</ul>
</div>