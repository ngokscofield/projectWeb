package adminServletAction;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AnswerDAO;
import dao.CategoryDAO;
import dao.QuestionDAO;
import model.Answer;
import model.Category;
import model.Question;

@WebServlet("/addQuestion")
public class AddQuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private CategoryDAO catDAO;
	private QuestionDAO questionDAO;
	private AnswerDAO answerDAO;
	ArrayList<Category> listCategory;
	
    public AddQuestionServlet() {
        super();
        catDAO = new CategoryDAO();
        questionDAO = new QuestionDAO();
        answerDAO = new AnswerDAO();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			listCategory = catDAO.getAllExam();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("listCategory", listCategory);
		System.out.println("here");
		RequestDispatcher dispatcher = request.getRequestDispatcher("./admin/views/addQuestion.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Random ran = new Random();
		String questionCode = "na"+ran.nextInt(1000)+"na"+ran.nextInt(2000);
		int partId = Integer.parseInt(request.getParameter("partId"));
		String qsContent = request.getParameter("qsContent");
		String answerContent1 = request.getParameter("answer1");
		String answerContent2 = request.getParameter("answer2");
		String answerContent3 = request.getParameter("answer3");
		String answerContent4 = request.getParameter("answer4");
		int rightAnswer = Integer.parseInt(request.getParameter("right-answer"));
		
		Question qs = new Question();
		qs.setQuestionCode(questionCode);
		qs.setContent(qsContent);
		qs.setCategoryId(partId);
		Answer answer1 = new Answer(answerContent1, questionCode);
		Answer answer2 = new Answer(answerContent2, questionCode);
		Answer answer3 = new Answer(answerContent3, questionCode);
		Answer answer4 = new Answer(answerContent4, questionCode);
		Answer[] answers = {answer1, answer2, answer3, answer4};
		for(int i = 1; i<=4 ;i++) {
			if(i == rightAnswer) {
				answers[i-1].setIsCorrect(1);			
			}
			else {
				answers[i-1].setIsCorrect(0);
			}
		}
		questionDAO.insert(qs);
		
//		System.out.println("Question content"+qsContent);
//		System.out.println("Question code"+questionCode);
//		
		for(int i = 0; i < 4; i++) {
			answerDAO.insert(answers[i]);
		}
		response.sendRedirect(request.getContextPath()+"/manageQuestion");
	}

}
