package servletAction;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.UserModel;

@WebServlet("/ListExamDoneServlet")
public class ListExamDoneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ListExamDoneServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		UserModel model = (UserModel)session.getAttribute("User");
		if(model == null) {
			response.sendRedirect(request.getContextPath()+"/home");
			return;
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("./views/list-exam-done.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
