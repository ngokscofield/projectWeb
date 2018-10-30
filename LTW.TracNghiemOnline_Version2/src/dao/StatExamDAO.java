package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.MySQLConnection;
import model.Exam;
import model.StatExam;

public class StatExamDAO {
	private MySQLConnection sqlConnection = new MySQLConnection();
	
	public StatExamDAO() {
		
	}
	
	public ArrayList<StatExam> getStatExamByUser(int userId){
		ArrayList<StatExam> listExam = new ArrayList<StatExam>();
		String sql = "SELECT exam.title, Max(userexam.correctNumber) as highScore, userexam.examId, exam.imagePath\r\n" + 
				"FROM userexam, exam, user\r\n" + 
				"where userexam.examId = exam.examId\r\n" + 
				"    and user.userId = ?\r\n" + 
				"group by exam.title";
		try {
			PreparedStatement pSm = sqlConnection.connectDB().prepareStatement(sql);
			pSm.setInt(1, userId);
			ResultSet res = pSm.executeQuery();
			StatExam statExam = null;
			Exam exam = null;
			while(res.next()) {
				exam = new Exam();
				statExam = new StatExam();
				exam.setExamId(res.getInt("examId"));
				exam.setTitle(res.getString("title"));
				exam.setImagePath(res.getString("imagePath"));
				statExam.setExam(exam);
				statExam.setUserId(userId);
				int highScore = (int)res.getInt("highScore")*495/100;
				statExam.setHighScore(highScore);
				listExam.add(statExam);				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listExam;
	}
}
