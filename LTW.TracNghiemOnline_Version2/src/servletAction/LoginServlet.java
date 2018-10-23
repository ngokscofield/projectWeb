package servletAction;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import model.UserModel;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub				
		RequestDispatcher dispatcher = request.getRequestDispatcher("./views/login.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		UserDAO userDAO = new UserDAO();		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		UserModel model = userDAO.login(email, password);
		HttpSession httpSession = request.getSession();
		httpSession.setAttribute("User", model);
		if(model == null) {			
//			httpSession.setAttribute("validate", "false");
			String erroString = "Tên đăng nhập hoặc mật khẩu không chính xác";
			request.setAttribute("error", erroString);
			RequestDispatcher dispatcher = request.getRequestDispatcher("./views/login.jsp");
			dispatcher.forward(request, response);		
		}
		else {
			if(model.getRole() == 0) {
				response.sendRedirect(request.getContextPath()+"/home");
			}
			else {
				//response.sendRedirect(request.getContextPath()+"/admin"); chua xay dung trang admin
			}
		}
	}

}
