package servletAction;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import model.UserModel;

public class HomepageServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L;

	private UserDAO userDAO;
	
	public HomepageServlet() {
		// TODO Auto-generated constructor stub
		userDAO = new UserDAO();
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		UserModel model = (UserModel) session.getAttribute("User");			
		if(model != null) {
			int userId = model.getUserID();
			request.setAttribute("USER_MODEL", userDAO.getUserById(userId));
			RequestDispatcher dispatcher = request.getRequestDispatcher("./views/index.jsp");
			dispatcher.forward(request, response);			
		}
		else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("./views/index.jsp");
			dispatcher.forward(request, response);
		}		
	}
}
