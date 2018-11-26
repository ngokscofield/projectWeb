package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.MySQLConnection;
import model.QuestionExam;

public class QuestionExamDAO {
	private MySQLConnection sqlConnection = new MySQLConnection();
	
	public QuestionExamDAO() {
		
	}
	
	public void insert(QuestionExam qe) {
		String sql ="insert into questionexam values(?,?)";
		try {
			PreparedStatement pSm = sqlConnection.connectDB().prepareStatement(sql);
			pSm.setInt(1, qe.getExamId());
			pSm.setInt(2, qe.getQuestionId());
			pSm.executeUpdate();			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public int exist(int examId) {
		String sql ="SELECT * FROM toeic.questionexam where examId=?";
		try {
			PreparedStatement pSm = sqlConnection.connectDB().prepareStatement(sql);
			pSm.setInt(1, examId);
			ResultSet rs =  pSm.executeQuery();	
			if(rs.next()) {
				return 1;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
}
