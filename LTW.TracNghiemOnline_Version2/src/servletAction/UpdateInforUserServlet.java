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

@WebServlet("/userInfor")
public class UpdateInforUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private UserModel model;
    private UserDAO userDAO;
    
    public UpdateInforUserServlet() {
    	userDAO = new UserDAO();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		UserModel model = (UserModel) session.getAttribute("User");			
		if(model == null) {
			response.sendRedirect(request.getContextPath()+"/login");
			return;
		}		
		int userId = model.getUserID();					
		session.setAttribute("User", userDAO.getUserById(userId));
		RequestDispatcher dispatcher = request.getRequestDispatcher("./views/userInfor.jsp");
		dispatcher.forward(request, response);
	}	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub	
		request.setCharacterEncoding("UTF-8");
		String error = "";
		int userId = Integer.parseInt(request.getParameter("userId"));		
		UserModel userLogin = userDAO.getUserById(userId);				
		String fullname = userLogin.getFullname();
		String password = userLogin.getPassword();
		String dateOfBirth = userLogin.getDateOfBirth();
		String phone = userLogin.getPhone();
		String job = userLogin.getJob();
		int sex = userLogin.getSex();
		
		String password_form = request.getParameter("newPassword");					
		if(password_form == null) {
			fullname = request.getParameter("fullname");
			//System.out.println("Fullname: "+fullname);
			dateOfBirth = request.getParameter("dateOfBirth");
			//System.out.println("dateOfBirth: "+dateOfBirth);
			phone = request.getParameter("phone");
			//System.out.println("Phone: "+phone);
			job = request.getParameter("jop");
			//System.out.println("Jop: "+jop);
			sex = Integer.parseInt(request.getParameter("sex"));
			//System.out.println("Sex: "+sex);
			model = new UserModel(userId, fullname, phone, dateOfBirth, job, sex, password);
			if(userDAO.update(model)) {
				response.sendRedirect(request.getContextPath()+"/userInfor");
			}
			else {
				error = "Không thể cập nhật thông tin. Vui lòng thử lại";
				request.setAttribute("error", error);
				RequestDispatcher dispatcher = request.getRequestDispatcher("./views/userInfor.jsp");
				dispatcher.forward(request, response);
			}	
		}
		else {				
			model = new UserModel(userId, fullname, phone, dateOfBirth, job, sex, password_form);
			if(userDAO.update(model)) {				
				response.sendRedirect(request.getContextPath()+"/userInfor");			
			}
			else {
				error = "Không thể cập nhật thông tin. Vui lòng thử lại";
				request.setAttribute("error", error);
				RequestDispatcher dispatcher = request.getRequestDispatcher("./views/userInfor.jsp");
				dispatcher.forward(request, response);
			}			
		}
	}
}
