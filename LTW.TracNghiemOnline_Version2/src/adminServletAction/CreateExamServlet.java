package adminServletAction;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AnswerDAO;
import dao.CategoryDAO;
import dao.QuestionDAO;
import dao.QuestionExamDAO;
import model.Answer;
import model.Category;
import model.Question;
import model.QuestionExam;
import model.UserModel;

@WebServlet("/createExam")
public class CreateExamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private CategoryDAO catDAO;
	private QuestionDAO questionDAO;
	private AnswerDAO answerDAO;
	private ArrayList<Question> questionPart1;
	private ArrayList<Question> questionPart2;
	private ArrayList<Question> questionPart3;
	private ArrayList<Question> questionPart4;
	private ArrayList<Category> listCategory;
	private QuestionExamDAO qeDAO;
	private int examId;

	public CreateExamServlet() {
		super();
		catDAO = new CategoryDAO();
		questionDAO = new QuestionDAO();
		answerDAO = new AnswerDAO();
		qeDAO = new QuestionExamDAO();				
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			questionPart1 = questionDAO.getQuestionByCategory(1);
			questionPart2 = questionDAO.getQuestionByCategory(2);
			questionPart3 = questionDAO.getQuestionByCategory(3);
			questionPart4 = questionDAO.getQuestionByCategory(4);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		doPost(request, response);
	}

	public void randomCreateExam(int examId, ArrayList<Question> questionParts, int number) {
		QuestionExam questionExam = null;
		ArrayList<QuestionExam> listQE = new ArrayList<>();
		Question question = null;	
		Random r = new Random();
		int count = 0;
		int index = 0;
//		System.out.println(questionParts.size());
		while (count < number) {
			question = new Question();	
			questionExam = new QuestionExam();
			questionExam.setExamId(examId);
			index = r.nextInt(questionParts.size() - 1);
//			System.out.println(index);			
			question = questionParts.get(index);
			count++;
			questionParts.remove(index);
///			System.out.print(question.getQuestionId()+" ");
			questionExam.setQuestionId(question.getQuestionId());	
			listQE.add(questionExam);
		}
//		int a = 0;
		System.out.println();
		for(QuestionExam qe : listQE) {
			qeDAO.insert(qe);
//			System.out.print(qe.getQuestionId()+" ");
		}
//			System.out.println();
		//System.out.println("NUMBER: "+number +"So cau: "+listQE.size());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub		
		try {
			int examId = Integer.parseInt(request.getParameter("id"));
			if(qeDAO.exist(examId)==0) {
				randomCreateExam(examId, questionPart1, 10);
				randomCreateExam(examId, questionPart2, 30);
				randomCreateExam(examId, questionPart3, 30);
				randomCreateExam(examId, questionPart4, 30);				
				response.sendRedirect(request.getContextPath()+"/manageExam?id="+examId);				
			}
			else {
				request.setAttribute("error", "Đề thi đã được tạo!!!");
				//response.sendRedirect(request.getContextPath()+"/manageExam?id="+examId);
				RequestDispatcher dispatcher = request.getRequestDispatcher(request.getContextPath()+"/manageExam?id="+examId);
				dispatcher.forward(request, response);
			}
			
		}catch (NumberFormatException e) {
			// TODO: handle exception
			e.printStackTrace();
		}

	}
}
