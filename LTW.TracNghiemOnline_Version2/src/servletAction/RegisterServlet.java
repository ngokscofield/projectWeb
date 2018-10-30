package servletAction;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.MD5Library;
import dao.UserDAO;
import model.UserModel;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher dispatcher = request.getRequestDispatcher("./views/register.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		request.setCharacterEncoding("UTF-8");
		UserDAO userDAO = new UserDAO();
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		String passwordMd5 = MD5Library.md5(password);
		UserModel model = new UserModel(name, email, phone, passwordMd5);	
		if(userDAO.findUser(email)) {
			request.setAttribute("userError", model);
			request.setAttribute("error", "Email đã tồn tại");
			RequestDispatcher dispatcher = request.getRequestDispatcher("./views/register.jsp");
			dispatcher.forward(request, response);
		}
		else if(userDAO.insert(model)) {
			response.sendRedirect(request.getContextPath()+"/login");
		}
		else {
			response.sendRedirect(request.getContextPath()+"/register");
		}
	}

}
