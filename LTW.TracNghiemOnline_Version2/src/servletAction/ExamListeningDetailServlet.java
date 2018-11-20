package servletAction;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AnswerDAO;
import dao.ExamDAO;
import dao.QuestionDAO;
import dao.ResultDAO;
import dao.UserExamDAO;
import model.Exam;
import model.Question;
import model.Result;
import model.UserExam;
import model.UserModel;

@WebServlet("/exam-listening-detail")
public class ExamListeningDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	ArrayList<Question> questionPart1 = null;
	ArrayList<Question> questionPart2 = null;
	ArrayList<Question> questionPart3 = null;
	ArrayList<Question> questionPart4 = null;
	ArrayList<Integer> listAnswer;
	
	UserExam userExam;
	Exam exam = null;	
	ExamDAO examDAO;
	QuestionDAO questionDAO;
	AnswerDAO answerDAO;
	UserExamDAO userExamDAO;
	Result result;
	ResultDAO resultDAO;
	
	String fullname = "";
	String title="";
	int  count = 0;
	String examId;
	
    public ExamListeningDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
        
    }

    public void setAttribute(HttpServletRequest request) {
    	request.setAttribute("listPart1", questionPart1);
		request.setAttribute("listPart2", questionPart2);
		request.setAttribute("listPart3", questionPart3);
		request.setAttribute("listPart4", questionPart4);
		request.setAttribute("exam", exam);
		request.setAttribute("fullname", fullname);	
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		examDAO = new ExamDAO();
		questionDAO = new QuestionDAO();
		UserModel model = (UserModel) session.getAttribute("User");
		String examId = request.getParameter("id");			
		
		if(model == null) {
			response.sendRedirect(request.getContextPath()+"/login");			
			return;
			
		}
		else {
			fullname = model.getFullname();
			if(examId != null){
				//response.sendRedirect("/exam-list-detail.jsp");
				exam = examDAO.getDetail(Integer.parseInt(examId));
				title = exam.getTitle();
				questionPart1 = questionDAO.getQuestionExamByCategory(Integer.parseInt(examId), 1);
				questionPart2 = questionDAO.getQuestionExamByCategory(Integer.parseInt(examId), 2);
				questionPart3 = questionDAO.getQuestionExamByCategory(Integer.parseInt(examId), 3);
				questionPart4 = questionDAO.getQuestionExamByCategory(Integer.parseInt(examId), 4);
			}
			else{
				response.sendRedirect(request.getContextPath()+"/exam-list-detail");
			}
		}
		setAttribute(request);
		RequestDispatcher dispatcher = request.getRequestDispatcher("./views/exam-listening-detail.jsp");		
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		userExam = new UserExam();
		answerDAO = new AnswerDAO();
		userExamDAO = new UserExamDAO();
		result = new Result();	
		resultDAO = new ResultDAO();		
		listAnswer = new ArrayList<Integer>();
		
		setAttribute(request);
		
		int rightAnswer = 0;
		HttpSession session = request.getSession();
		UserModel user = (UserModel)session.getAttribute("User");
		
		int userId = user.getUserID();			
		int exam_id = exam.getExamId();
		int timeDoTest = userExamDAO.timesDoTest(userId, exam_id);
		userExam.setUserId(userId);
		userExam.setExamId(exam_id);
		userExam.setTimes(timeDoTest);
		
		
		for(int i=1;i<=100;i++) {
			try {
				int index = Integer.parseInt(request.getParameter("answerquestion"+i));
				if(answerDAO.isCorrect(index) == 1 ) {
					//System.out.print("Answer correct in code: "+index);
					rightAnswer += 1;
				}
			} catch(NumberFormatException num) {
			}			
		}
		userExam.setCorrectNumber(rightAnswer);
		userExamDAO.insert(userExam);	
		//System.out.println("userexam insert success");
		int lastIdUserExam = userExamDAO.getLastId();
		result.setUserExamId(lastIdUserExam);
		
		int totalScore = (int)rightAnswer*495/100;
		for(int i=1;i<=100;i++) {
			try {
				int index = Integer.parseInt(request.getParameter("answerquestion"+i));
				listAnswer.add(index);				
				result.setAnswerSelected(index);
				resultDAO.insert(result);
			} catch(NumberFormatException num) {				
			}			
		}
		request.setAttribute("answerSelected", listAnswer);
		request.setAttribute("rightAnswer", rightAnswer);
		request.setAttribute("totalScore", totalScore);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("./views/resultExam.jsp");
		//RequestDispatcher dispatcher = request.getRequestDispatcher(request.getContextPath()+"/result");
		dispatcher.forward(request, response);
		
	}

}
