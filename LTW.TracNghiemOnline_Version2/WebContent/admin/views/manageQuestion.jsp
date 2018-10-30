<%@page import="dao.AnswerDAO"%>
<%@page import="model.Answer"%>
<%@page import="model.Question"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.UserModel"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/index.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/manageQuestion.css">
	<meta charset="utf-8">
</head>
<body>
<%
	AnswerDAO answerDAO = new AnswerDAO();
	UserModel user = (UserModel) session.getAttribute("User");	
	ArrayList<Question> questionPart1 = (ArrayList<Question>)request.getAttribute("listPart1");
	ArrayList<Question> questionPart2 = (ArrayList<Question>)request.getAttribute("listPart2");
	ArrayList<Question> questionPart3 = (ArrayList<Question>)request.getAttribute("listPart3");
	ArrayList<Question> questionPart4 = (ArrayList<Question>)request.getAttribute("listPart4");		
	ArrayList<Question> questionPart5 = (ArrayList<Question>)request.getAttribute("listPart5");
	ArrayList<Question> questionPart6 = (ArrayList<Question>)request.getAttribute("listPart6");
	ArrayList<Question> questionPart7 = (ArrayList<Question>)request.getAttribute("listPart7");	
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
	<div class="main-right-header">Quản lý tài khoản sử dụng</div>
	<div class="main-right-container">
			<div class="toolbar">
				<ul>
					<!-- <li class="addUser">
						<span class="toolbar-add"></span>
						<a href="#">Thêm</a>
					</li> -->
					<li onclick="show(1)">
						<span class="toolbar-view"></span>
						<a href="#">Phần 1</a>
					</li>
					<li onclick="show(2)">
						<span class="toolbar-delete"></span>
						<a href="#" >Phần 2</a>
					</li>
					<li onclick="show(3)">
						<span class="toolbar-print"></span>
						<a href="#" >Phần 3</a>
					</li>
					<li onclick="show(4)">
						<span class="toolbar-email"></span>
						<a href="#"  >Phần 4</a>
					</li>
					<li onclick="show(5)">
						<span class="toolbar-report"></span>
						<a href="#"  >Phần 5</a>
					</li>
					<li onclick="show(6)">
						<span class="toolbar-refresh"></span>
						<a href="#" >Phần 6</a>
					</li>
					<li onclick="show(7)">
						<span class="toolbar-uitility"></span>
						<a href="#"  >Phần 7</a>
					</li>

					<li>
						<span class="toolbar-help"></span>
						<a href="<%=request.getContextPath()%>/addQuestion">Thêm câu hỏi</a>
					</li>
				</ul>
			</div>
			<div class="table-data">
				<table id="tbl-part1">
					<tbody>
						<tr class="thead">
							<td>Update/Delete</td>
							<td>Phần</td>
							<td>Mã câu hỏi</td>
							<td>Ảnh</td>
							<td>Đáp án A</td>
							<td>Đáp án B</td>
							<td>Đáp án C</td>
							<td>Đáp án D</td>
							<td>Đáp án đúng</td>
																				
						</tr>
						<!-- <tr>
							<td><input type="text"></td>
							<td><input type="text"></td>
							<td><input type="text"></td>
							<td><input type="text"></td>
							<td><input type="text"></td>
							<td><input type="text"></td>
							<td><input type="text"></td>
						</tr> -->
						<%for(Question q : questionPart1){ %>
						<tr>	
							<td><a href="#"
							onclick="./AddQuestion.jsp?id=<%=q.getQuestionId()%>">Edit</a>
							<a href="#">Delete</a>
							</td>	
							<td><%=q.getCategoryId() %></td>
							<td><%=q.getQuestionCode() %></td>											
							<td><img alt="" src="<%=request.getContextPath()%>/images/<%=q.getImage() %>">  </td>							
							<%ArrayList<Answer> answers = answerDAO.getAnswerbyQuestionCode(q.getQuestionCode());
							for(Answer a : answers){%>
								<td><%=a.getContent() %></td>
							<%}
							%>
							<td><%=q.getAnswer() %></td>
												
						</tr>
						<%} %>
					</tbody>
				</table>
				<table id="tbl-part2">
					<tbody>
						<tr class="thead">
							<td>Update/Delete</td>
							<td>Phần</td>
							<td>Mã câu hỏi</td>							
							<td>Đáp án A</td>
							<td>Đáp án B</td>
							<td>Đáp án C</td>							
							<td>Đáp án đúng</td>
																				
						</tr>
						<!-- <tr>
							<td><input type="text"></td>
							<td><input type="text"></td>
							<td><input type="text"></td>
							<td><input type="text"></td>
							<td><input type="text"></td>
							<td><input type="text"></td>
							<td><input type="text"></td>
						</tr> -->
						<%for(Question q : questionPart2){ %>
						<tr>	
							<td><a href="#"
							onclick="./AddQuestion.jsp?id=<%=q.getQuestionId()%>">Edit</a>
							<a href="#">Delete</a>
							</td>	
							<td><%=q.getCategoryId() %></td>		
							<td><%=q.getQuestionCode() %></td>																					
							<%ArrayList<Answer> answers = answerDAO.getAnswerbyQuestionCode(q.getQuestionCode());
							for(Answer a : answers){%>
								<td><%=a.getContent() %></td>
							<%}
							%>
							<td><%=q.getAnswer() %></td>												
						</tr>
						<%} %>
					</tbody>
				</table>
				<table id="tbl-part3">
					<tbody>
						<tr class="thead">
							<td>Update/Delete</td>
							<td>Phần</td>
							<td>Mã câu hỏi</td>
							<td>Câu hỏi</td>								
							<td>Đáp án A</td>
							<td>Đáp án B</td>
							<td>Đáp án C</td>
							<td>Đáp án D</td>
							<td>Đáp án đúng</td>
																				
						</tr>
						<%for(Question q : questionPart3){ %>
						<tr>	
							<td><a href="#"
							onclick="./AddQuestion.jsp?id=<%=q.getQuestionId()%>">Edit</a>
							<a href="#">Delete</a>
							</td>	
							<td><%=q.getCategoryId() %></td>	
							<td><%=q.getQuestionCode() %></td>	
							<td><%=q.getContent()%></td>																						
							<%ArrayList<Answer> answers = answerDAO.getAnswerbyQuestionCode(q.getQuestionCode());
							for(Answer a : answers){%>
								<td><%=a.getContent() %></td>
							<%}
							%>
							<td><%=q.getAnswer() %></td>												
						</tr>
						<%} %>
					</tbody>
				</table>
				<table id="tbl-part4">
					<tbody>
						<tr class="thead">
							<td>Update/Delete</td>
							<td>Phần</td>
							<td>Mã câu hỏi</td>
							<td>Câu hỏi</td>								
							<td>Đáp án A</td>
							<td>Đáp án B</td>
							<td>Đáp án C</td>
							<td>Đáp án D</td>
							<td>Đáp án đúng</td>
																				
						</tr>
						<%for(Question q : questionPart4){ %>
						<tr>	
							<td><a href="#"
							onclick="./AddQuestion.jsp?id=<%=q.getQuestionId()%>">Edit</a>
							<a href="#">Delete</a>
							</td>	
							<td><%=q.getCategoryId() %></td>	
							<td><%=q.getQuestionCode() %></td>	
							<td><%=q.getContent()%></td>																						
							<%ArrayList<Answer> answers = answerDAO.getAnswerbyQuestionCode(q.getQuestionCode());
							for(Answer a : answers){%>
								<td><%=a.getContent() %></td>
							<%}
							%>
							<td><%=q.getAnswer() %></td>												
						</tr>
						<%} %>
					</tbody>
				</table>
				<table id="tbl-part5">
					<tbody>
						<tr class="thead">
							<td>Update/Delete</td>
							<td>Phần</td>
							<td>Mã câu hỏi</td>
							<td>Câu hỏi</td>								
							<td>Đáp án A</td>
							<td>Đáp án B</td>
							<td>Đáp án C</td>
							<td>Đáp án D</td>
							<td>Đáp án đúng</td>
																				
						</tr>
						<%for(Question q : questionPart5){ %>
						<tr>	
							<td><a href="#"
							onclick="./AddQuestion.jsp?id=<%=q.getQuestionId()%>">Edit</a>
							<a href="#">Delete</a>
							</td>	
							<td><%=q.getCategoryId() %></td>	
							<td><%=q.getQuestionCode() %></td>	
							<td><%=q.getContent()%></td>																						
							<%ArrayList<Answer> answers = answerDAO.getAnswerbyQuestionCode(q.getQuestionCode());
							for(Answer a : answers){%>
								<td><%=a.getContent() %></td>
							<%}
							%>
							<td><%=q.getAnswer() %></td>												
						</tr>
						<%} %>
					</tbody>
				</table>
				<table id="tbl-part6">
					<tbody>
						<tr class="thead">
							<td>Update/Delete</td>
							<td>Phần</td>
							<td>Mã câu hỏi</td>
							<td>Câu hỏi</td>								
							<td>Đáp án A</td>
							<td>Đáp án B</td>
							<td>Đáp án C</td>
							<td>Đáp án D</td>
							<td>Đáp án đúng</td>
																				
						</tr>
						<%for(Question q : questionPart6){ %>
						<tr>	
							<td><a href="#"
							onclick="./AddQuestion.jsp?id=<%=q.getQuestionId()%>">Edit</a>
							<a href="#">Delete</a>
							</td>	
							<td><%=q.getCategoryId() %></td>	
							<td><%=q.getQuestionCode() %></td>	
							<td><%=q.getContent()%></td>																						
							<%ArrayList<Answer> answers = answerDAO.getAnswerbyQuestionCode(q.getQuestionCode());
							for(Answer a : answers){%>
								<td><%=a.getContent() %></td>
							<%}
							%>
							<td><%=q.getAnswer() %></td>												
						</tr>
						<%} %>
					</tbody>
				</table>
				<table id="tbl-part7">
					<tbody>
						<tr class="thead">
							<td>Update/Delete</td>
							<td>Phần</td>
							<td>Mã câu hỏi</td>
							<td>Câu hỏi</td>								
							<td>Đáp án A</td>
							<td>Đáp án B</td>
							<td>Đáp án C</td>
							<td>Đáp án D</td>
							<td>Đáp án đúng</td>																				
						</tr>
						<%for(Question q : questionPart7){ %>
						<tr>	
							<td><a href="#"
							onclick="./AddQuestion.jsp?id=<%=q.getQuestionId()%>">Edit</a>
							<a href="#">Delete</a>
							</td>	
							<td><%=q.getCategoryId() %></td>	
							<td><%=q.getQuestionCode() %></td>	
							<td><%=q.getContent()%></td>																						
							<%ArrayList<Answer> answers = answerDAO.getAnswerbyQuestionCode(q.getQuestionCode());
							for(Answer a : answers){%>
								<td><%=a.getContent() %></td>
							<%}
							%>
							<td><%=q.getAnswer() %></td>												
						</tr>
						<%} %>
					</tbody>
				</table>
			</div>
			

			<div id="detail-content">
			<div id="record">
				Tổng số bản ghi: <span id="record-total"></span>
				<div class="toggle-detail-content">
					<span class="arrow-toggle"></span>
				</div>
			</div>
			</div>
		
	</div>
	</div>
	</div>
</body>
 <script type="text/javascript" src="<%=request.getContextPath()%>/admin/js/manageQuestion.js"></script> 
</html>