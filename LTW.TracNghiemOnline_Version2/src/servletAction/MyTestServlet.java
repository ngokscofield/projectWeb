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

import dao.StatExamDAO;
import model.StatExam;
import model.UserModel;

@WebServlet("/mytest")
public class MyTestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private StatExamDAO statExamDAO;
	
    public MyTestServlet() {
    	statExamDAO = new StatExamDAO();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		UserModel model = (UserModel)session.getAttribute("User");
		if(model == null) {
			response.sendRedirect(request.getContextPath()+"/home");
			return;
		}
		int userId = model.getUserID();
		ArrayList<StatExam> listExam = statExamDAO.getStatExamByUser(userId);
		request.setAttribute("listExam", listExam);
		RequestDispatcher dispatcher = request.getRequestDispatcher("./views/myTest.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
