/*package servletAction;

import java.io.IOException;
import java.io.PrintWriter;
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

*//**
 * Servlet implementation class ResultServlet
 *//*
@WebServlet("/result")
public class ResultServlet extends HttpServlet {
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
	
	
	public void setAttribute(HttpServletRequest request) {
    	request.setAttribute("listPart1", questionPart1);
		request.setAttribute("listPart2", questionPart2);
		request.setAttribute("listPart3", questionPart3);
		request.setAttribute("listPart4", questionPart4);
    }
	
    public ResultServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("23");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		UserExam userExam = new UserExam();
		AnswerDAO answerDAO = new AnswerDAO();
		UserExamDAO userExamDAO = new UserExamDAO();
		Result result = new Result();	
		ResultDAO resultDAO = new ResultDAO();
//		int[] answerSelected = new int[101];
		ArrayList<Integer> listAnswer = new ArrayList();
		int score = 0;
		HttpSession session = request.getSession();
		UserModel user = (UserModel)session.getAttribute("User");
		int userId = user.getUserID();
		int examId = Integer.parseInt(request.getParameter("id"));
		int timeDoTest = userExamDAO.timesDoTest(userId, examId);
		userExam.setUserId(userId);
		userExam.setExamId(examId);
		userExam.setTimes(timeDoTest);
		//userExamDAO.insert(userExam);
		
		int lastIdUserExam = userExamDAO.getLastId();
		result.setUserExamId(lastIdUserExam);
		
		for(int i=1;i<=100;i++) {
			try {
				int index = Integer.parseInt(request.getParameter("answerquestion"+i));
				listAnswer.add(index);
				result.setAnswerSelected(index);
				//resultDAO.insert(result);
				System.out.println();
				if(answerDAO.isCorrect(index) == 1 ) {
					score += 1;
				}
			} catch(NumberFormatException num) {
				
			}			
		}
		request.setAttribute("answerSelected", listAnswer);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("./views/resultExam.jsp");
		dispatcher.forward(request, response);
	}

}
*/