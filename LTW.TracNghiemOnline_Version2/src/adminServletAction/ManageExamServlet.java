package adminServletAction;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ExamDAO;
import dao.QuestionDAO;
import model.Question;
import model.UserModel;

public class ManageExamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private QuestionDAO questionDAO;   
    ArrayList<Question> listQuestion;
    private ExamDAO examDAO;
    
    ArrayList<Question> questionPart1 = null;
	ArrayList<Question> questionPart2 = null;
	ArrayList<Question> questionPart3 = null;
	ArrayList<Question> questionPart4 = null;
	ArrayList<Question> questionPart5 = null;
	ArrayList<Question> questionPart6 = null;
	ArrayList<Question> questionPart7 = null;	
	
    public ManageExamServlet() {
        super();
        questionDAO = new QuestionDAO();
        examDAO = new ExamDAO();
        // TODO Auto-generated constructor stub
    }

    public void setAttribute(HttpServletRequest request) {
    	request.setAttribute("listPart1", questionPart1);
		request.setAttribute("listPart2", questionPart2);
		request.setAttribute("listPart3", questionPart3);
		request.setAttribute("listPart4", questionPart4);
		request.setAttribute("listPart5", questionPart5);
		request.setAttribute("listPart6", questionPart6);
		request.setAttribute("listPart7", questionPart7);		
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		int examId = 0;
		UserModel model = (UserModel) session.getAttribute("User");	
		if(model == null) {
			response.sendRedirect(request.getContextPath()+"/login");
			return;
		}	
		try {		
			examId = Integer.parseInt(request.getParameter("id"));
			questionPart1 = questionDAO.getQuestionByExam(examId, 1);
			questionPart2 = questionDAO.getQuestionByExam(examId, 2);
			questionPart3 = questionDAO.getQuestionByExam(examId, 3);
			questionPart4 = questionDAO.getQuestionByExam(examId, 4);
			questionPart5 = questionDAO.getQuestionByExam(examId, 5);
			questionPart6 = questionDAO.getQuestionByExam(examId, 6);
			questionPart7 = questionDAO.getQuestionByExam(examId, 7);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(questionPart1 == null || questionPart2 == null || questionPart3 == null || questionPart4 == null || questionPart5 == null || questionPart6 == null || questionPart7 == null) {
			response.sendRedirect("./error.html");
			return;
		}
		setAttribute(request);
		request.setAttribute("examTitle", examDAO.getDetail(examId));
		RequestDispatcher dispatcher = request.getRequestDispatcher("./admin/views/manageExam.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}	
}
