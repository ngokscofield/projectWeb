<%@page import="dao.AnswerDAO"%>
<%@page import="model.Answer"%>
<%@page import="model.Question"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.QuestionDAO"%>
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

<link rel="stylesheet" href="<%=request.getContextPath()%>/css/index.css">
<style>
html {
	min-height: 100vh;
}
</style>
</head>
<body>
	<%		
		AnswerDAO answerDAO = new AnswerDAO();
		ArrayList<Question> questionPart1 = (ArrayList<Question>)request.getAttribute("listPart1");
		ArrayList<Question> questionPart2 = (ArrayList<Question>)request.getAttribute("listPart2");
		ArrayList<Question> questionPart3 = (ArrayList<Question>)request.getAttribute("listPart3");
		ArrayList<Question> questionPart4 = (ArrayList<Question>)request.getAttribute("listPart4");		
		Exam exam = (Exam)request.getAttribute("exam");
		
		int count = 0;
	%>
	<div id="header">
		<div id="header-placeholder">
			<a href="<%=request.getContextPath()%>/home"> <img src="<%=request.getContextPath() %>/img/logo.png" id="ucan-logo">
			</a>
			<div id="header-content">
				<ul class="list-item-header-after-signin">
					<li class="header-item"><a href="#" class="user-avatar"><%=request.getAttribute("fullname") %></a>
					</li>
					<li class="header-item "><a href="#" class="card-item-buy">Mua
							thẻ</a></li>
					<li class="header-item"><a href="#">Nạp thẻ</a></li>
					<li class="header-item"><a href="#">Giới thiệu</a></li>
					<li class="header-item"><a href="#">Thoát</a></li>
				</ul>
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
						<li><a href="exam.html">Đánh giá trình độ</a></li>
						<li><a href="#">Đề thi khối trung học cơ sở</a></li>
						<li><a href="#">Đề thi khối trung học phổ thông</a></li>
						<li><a href="#">Đề thi tuyển sinh lớp 10</a></li>
						<li><a href="#">Đề thi toeic</a></li>
					</ul></li>
				<li class="front-menu-item"><a href="#">Từ vựng</a></li>
				<li class="front-menu-item"><a href="#">Thư viện</a></li>
				<li class="front-menu-item"><a href="#">Trường lớp</a></li>
			</ul>
		</div>
	</div>
	<div id="main">
		<div class="main-content">
			<div class="main-title">
				<a href="#">Test</a> <span class="splitter">></span> <span
					class="current-title"><%=exam.getTitle() %></span>
			</div>

			<div class="content-test">
				<div class="left-display">
					<ul>
						<li class="active">LISTENING</li>
						<li>READING</li>
					</ul>
					<div class="timeing-test">
						<img src="<%=request.getContextPath() %>/images/clock.png" alt="Clock" class="clock">
						<div class="time-relase"
							style="display: flex; font-size: 18px; font-weight: 600;">
							<div class="minute">45 phút</div>
							&nbsp;
							<div class="second">00 giây</div>
						</div>
					</div>
				</div>

				<div class="right-display">
					<div class="test-audio">
						<div class="mediaPlayer">
							<audio controls id="file-listen">
								<source src="<%=request.getContextPath() %>/audios/test01.mp3" type="audio/mpeg">
							</audio>
							<div
								style="font-size: 20px; position: relative; top: 10px; left: 20px; display: block;">Bấm
								nút bên cạnh để bật/dừng bài nghe</div>
						</div>

						<!-- Media Player / -->

					</div>

					<!-- Nội dung -->
					<!-- phan mot -->
					<form method="post" action="<%=request.getContextPath()%>/exam-listening-detail" id="sendResult">					
					<input type="hidden" value="<%=request.getAttribute("examId") == null? 0:request.getAttribute("examId")%>" name="id">
					<div class="card">
						<div class="card-direction card-direction-image">
							<div class="card-direction-title">
								<b>Part 1</b><br> <b>Directions</b>
							</div>
							<p class="guide">For each question in this part, you will
								hear four statements about a picture in your test book. When you
								hear the statements, you must select the one statement that best
								describes what you see in the picture. Then, find the number of
								the question on your answer sheet and mark your answer. The
								statements will not be printed in your test book and will be
								spoken only one time.</p>
							<br>
							<p>Look at the example item below</p>
							<br> <img src="<%=request.getContextPath() %>/images/0.jpg" alt=""> <br>
							<div class="card-direction-demo">
								<p>
									<span>Now listen to the four statements.</span><br> <span>Sample
										Answer</span><br> <span>(A) (B) (<b>C</b>) (D)
									</span><br> <span>Statement (C), “They’re standing near
										the table,” is the best description of the picture, so you
										should select answer (C) and <br>mark it on your answer
										sheet.
									</span>
								</p>
							</div>
						</div>
					</div>
							<%if(exam != null){                            	
                            	for(Question q : questionPart1){
                            		ArrayList<Answer> answers = answerDAO.getAnswerbyQuestionCode(q.getQuestionCode());
                            		count = count+1;
                            	%>
					<div class="card">
						<div class="card-question card-question-image">
							<div class="number-question">
								<span class="number-question-text"><%=count %></span>
							</div>
							<img src="<%=request.getContextPath() %>/images/<%=q.getImage()%>" alt="Image">
							<div class="answer-group">
								<input type="radio" name="answerquestion<%=count%>" id="" value="<%=answers.get(0).getAnswerId() %>" ><b>A.</b><%=answers.get(0).getContent() %><br> 
								<input type="radio" name="answerquestion<%=count%>" id="" value="<%=answers.get(1).getAnswerId() %>" ><b>B.</b><%=answers.get(1).getContent() %><br>
								<input type="radio" name="answerquestion<%=count%>" id="" value="<%=answers.get(2).getAnswerId() %>" ><b>C.</b><%=answers.get(2).getContent() %><br>
								<input type="radio" name="answerquestion<%=count%>" id="" value="<%=answers.get(3).getAnswerId() %>" ><b>D.</b><%=answers.get(3).getContent() %><br>
							</div>
						</div>
					</div>
						<%		}
	                        } 
	                            %>
					<!-- Phan hai -->					
					<div class="card">
						<div class="card-direction">
							<div class="card-direction-title">
								<b>Part 2</b><br> <b>Directions</b>
							</div>
							<p class="guide">You will hear a question or statement and
								three responses spoken .in English. They will not be printed in
								your test book and will be spoken only one time. Select the best
								response to the question or statement and mark the letter (A),
								(B), or (C) on your answer sheet.</p>
							<br>
							<p>
								<b>Example</b>
							</p>
							<br> <img src="" alt="Image">
							<div class="card-direction-demo">
								<p>
									You will hear: Where is the meeting room?<br> You will
									also hear: (A) To meet the new director.<br> (B) It’s the
									first room on the right.<br> (C) Yes, at two o’clock. The
									best response to the question “Where is the meeting room?” is
									choice (B), “It’s the first room on the right.” so (B) is the
									correct answer. You should mark answer (B) on your answer
									sheet.
								</p>
							</div>
						</div>
					</div>
						<%if(exam != null){                         	
                         	for(Question q : questionPart2){
                         		ArrayList<Answer> answers = answerDAO.getAnswerbyQuestionCode(q.getQuestionCode());
                         		count = count+1;
                         	%>					
					<div class="card">
						<div class="card-question">
							<div class="number-question">
								<span class="number-question-text"><%=count %></span>
							</div>													
							<div class="answer-group">
								<input type="radio" name="answerquestion<%=count%>" id="" value="<%=answers.get(0).getAnswerId() %>" ><b>A.</b><%=answers.get(0).getContent() %><br> 
								<input type="radio" name="answerquestion<%=count%>" id="" value="<%=answers.get(1).getAnswerId() %>" ><b>B.</b><%=answers.get(1).getContent() %><br>
								<input type="radio" name="answerquestion<%=count%>" id="" value="<%=answers.get(2).getAnswerId() %>" ><b>C.</b><%=answers.get(2).getContent() %><br>								
							</div>
						</div>
					</div>
					<%		}
                        }
 					 %>
					<!-- phan 3 -->
					<div class="card">
						<div class="card-direction">
							<div class="card-direction-title">
								<b>Part 3</b><br> <b>Directions</b>
							</div>
							<p class="guide">You will hear some conversations between two
								people. You will be asked to answer three questions about what
								the speakers say in each conversation. Select the best response
								to each question and mark the letter (A), (B), (C), or (D) on
								your answer sheet. The conversations will not be printed in your
								test book and will be spoken only one time.</p>
						</div>
					</div>
						<%if(exam != null){                         	
                         	for(Question q : questionPart3){
                         		ArrayList<Answer> answers = answerDAO.getAnswerbyQuestionCode(q.getQuestionCode());
                         		count = count+1;
                         	%>					
					<div class="card">
						<div class="card-question">
							<div class="number-question">
								<span class="number-question-text"><%=count %></span>
							</div>				
							<p class="card-question-text"><%=q.getContent() %></p>									
							<div class="answer-group">
								<input type="radio" name="answerquestion<%=count%>" id="" value="<%=answers.get(0).getAnswerId() %>" ><b>A.</b><%=answers.get(0).getContent() %><br> 
								<input type="radio" name="answerquestion<%=count%>" id="" value="<%=answers.get(1).getAnswerId() %>" ><b>B.</b><%=answers.get(1).getContent() %><br>
								<input type="radio" name="answerquestion<%=count%>" id="" value="<%=answers.get(2).getAnswerId() %>" ><b>C.</b><%=answers.get(2).getContent() %><br>								
								<input type="radio" name="answerquestion<%=count%>" id="" value="<%=answers.get(3).getAnswerId() %>" ><b>D.</b><%=answers.get(3).getContent() %><br>
							</div>
						</div>
					</div>
					<%		}
                        }
 					 %>					
					<!-- Phan 4 -->
					<div class="card">
						<div class="card-direction">
							<div class="card-direction-title">
								<b>Part 4</b><br> <b>Directions</b>
							</div>
							<p class="guide">You will hear some conversations between two
								people. You will be asked to answer three questions about what
								the speakers say in each conversation. Select the best response
								to each question and mark the letter (A), (B), (C), or (D) on
								your answer sheet. The conversations will not be printed in your
								test book and will be spoken only one time.</p>
						</div>
					</div>
						<%if(exam != null){                         	
                         	for(Question q : questionPart4){
                         		ArrayList<Answer> answers = answerDAO.getAnswerbyQuestionCode(q.getQuestionCode());
                         		count = count+1;
                         	%>					
					<div class="card">
						<div class="card-question">
							<div class="number-question">
								<span class="number-question-text"><%=count %></span>
							</div>				
							<p class="card-question-text"><%=q.getContent() %></p>									
							<div class="answer-group">
								<input type="radio" name="answerquestion<%=count%>" id="" value="<%=answers.get(0).getAnswerId() %>" ><b>A.</b><%=answers.get(0).getContent() %><br> 
								<input type="radio" name="answerquestion<%=count%>" id="" value="<%=answers.get(1).getAnswerId() %>" ><b>B.</b><%=answers.get(1).getContent() %><br>
								<input type="radio" name="answerquestion<%=count%>" id="" value="<%=answers.get(2).getAnswerId() %>" ><b>C.</b><%=answers.get(2).getContent() %><br>								
								<input type="radio" name="answerquestion<%=count%>" id="" value="<%=answers.get(3).getAnswerId() %>" ><b>D.</b><%=answers.get(3).getContent() %><br>
							</div>
						</div>
					</div>
					<%		}
                        }
 					 %>	
 					 <div class="reading">
 						 <input type="submit" value="Submit" class="btnSubmitForm">
 					 </div>
 					 </form>	
					
						
					
				</div>
			</div>
		</div>
	</div>
	<footer class="footer">
		<div class="container-footer">
			<div class="about-ucan">
				<div class="about-1">Giới thiệu sản phẩm</div>
				<div class="about-2">Một sản phẩm của 4man team</div>
				<div class="contact">
					
					<div>
						<strong>Địa chỉ:&nbsp;</strong>Học viện Công nghệ Bưu chính Viễn thông
					</div>
					<div>
						<strong>Điện thoại:</strong> 024 xxxxxx
					</div>
					<div>
						<strong>Hotline:</strong> 0965 262 801
					</div>
					<div>
						<strong>Email:&nbsp;</strong><a href="mailto:ngocanhtc4s@outlook.com"><span
							style="color: #f36d00;">ngocanhtc4s@outlook.com</span></a>
					</div>
					<div>
						<strong>Skype: </strong> ngocanhtc4s@outlook.com
					</div>
				</div>
			</div>
			<ul class="ucan-links">
				<li><a href="#">Giới thiệu</a></li>
				<li><a href="#">Liên hệ</a></li>
				<li><a href="#">Điều khoản sử dụng</a></li>
				<li><a href="#">Chính sách thanh toán</a></li>
				<li><a href="#">Chính sách bảo mật</a></li>
			</ul>
		</div>
	</footer>
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
<script type="text/javascript" src="<%=request.getContextPath() %>/js/index.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/countdown.js"></script>
</html>