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

import dao.QuestionDAO;
import model.Question;
import model.UserModel;

@WebServlet("/manageQuestion")
public class ManageQuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private QuestionDAO questionDAO;   
    ArrayList<Question> listQuestion;
    
    ArrayList<Question> questionPart1 = null;
	ArrayList<Question> questionPart2 = null;
	ArrayList<Question> questionPart3 = null;
	ArrayList<Question> questionPart4 = null;
	ArrayList<Question> questionPart5 = null;
	ArrayList<Question> questionPart6 = null;
	ArrayList<Question> questionPart7 = null;	
	
    public ManageQuestionServlet() {
        super();
        questionDAO = new QuestionDAO();
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
		UserModel model = (UserModel) session.getAttribute("User");			
		if(model == null) {
			response.sendRedirect(request.getContextPath()+"/login");
			return;
		}	
		try {			
			questionPart1 = questionDAO.getQuestionByCategory(1);
			questionPart2 = questionDAO.getQuestionByCategory(2);
			questionPart3 = questionDAO.getQuestionByCategory(3);
			questionPart4 = questionDAO.getQuestionByCategory(4);
			questionPart5 = questionDAO.getQuestionByCategory(5);
			questionPart6 = questionDAO.getQuestionByCategory(6);
			questionPart7 = questionDAO.getQuestionByCategory(7);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(questionPart1 == null || questionPart2 == null || questionPart3 == null || questionPart4 == null || questionPart5 == null || questionPart6 == null || questionPart7 == null) {
			response.sendRedirect("./error.html");
			return;
		}
		setAttribute(request);	
		RequestDispatcher dispatcher = request.getRequestDispatcher("./admin/views/manageQuestion.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}


}
