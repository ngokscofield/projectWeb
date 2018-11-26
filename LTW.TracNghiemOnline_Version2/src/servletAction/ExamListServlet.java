package servletAction;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ExamDAO;
import model.Exam;

public class ExamListServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub		
		RequestDispatcher dispatcher = request.getRequestDispatcher("./views/exam-list-detail.jsp");
		ExamDAO examDAO = new ExamDAO();
		ArrayList<Exam> exams = examDAO.getAllExam();
		request.setAttribute("listExam", exams);
		dispatcher.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}	
}
