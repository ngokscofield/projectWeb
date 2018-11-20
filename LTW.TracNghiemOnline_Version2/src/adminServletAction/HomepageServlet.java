package adminServletAction;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ExamDAO;
import model.UserModel;

public class HomepageServlet  extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public HomepageServlet() {
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub		
		HttpSession session = request.getSession();
		UserModel model = (UserModel) session.getAttribute("User");			
		if(model == null) {
			response.sendRedirect(request.getContextPath()+"/login");
			return;
		}	
		RequestDispatcher dispatcher = request.getRequestDispatcher("./admin/views/admin-home.jsp");
		dispatcher.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

}
