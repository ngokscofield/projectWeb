package adminServletAction;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import model.UserModel;

@WebServlet("/manageAccount")
public class ManageAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private UserDAO userDAO;   
    ArrayList<UserModel> listUser;
    
    public ManageAccountServlet() {
        super();
        userDAO = new UserDAO();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		UserModel model = (UserModel) session.getAttribute("User");			
		if(model == null) {
			response.sendRedirect(request.getContextPath()+"/login");
			return;
		}	
		try {
			listUser = userDAO.getAllUser();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(listUser == null) {
			response.sendRedirect("./error.html");
			return;
		}		
		
		request.setAttribute("listUser", listUser);
		request.setAttribute("record", userDAO.totalRecord());
		RequestDispatcher dispatcher = request.getRequestDispatcher("./admin/views/manageAccount.jsp");
		dispatcher.forward(request, response);
	}

	
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = req.getParameter("id");
		System.out.println(id);
		try {
			int userId = Integer.parseInt(id);
			userDAO.delete(userId);
			
		}catch (Exception e) {
			// TODO: handle exception
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String id = request.getParameter("id");
		System.out.println(id);
		try {
			int userId = Integer.parseInt(id);
			userDAO.delete(userId);
			response.sendRedirect(request.getContextPath()+"/manageAccount");
		}catch (Exception e) {
			// TODO: handle exception
		}
	}

}
