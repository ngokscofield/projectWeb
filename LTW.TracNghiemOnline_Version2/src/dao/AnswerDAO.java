package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.MySQLConnection;
import model.Answer;

/*
 * Lớp thực hiện việc truy vấn cơ sở dữ liệu trong bảng Answer 
 * Created by: nnanh - 15/10/2018
 */
public class AnswerDAO {
	private MySQLConnection sqlConnection = new MySQLConnection();
	
	public ArrayList<Answer> getAnswerbyQuestionCode(String questionCode) throws SQLException {
		ArrayList<Answer> answerList = new ArrayList<Answer>();
		String sql = "select * from answer where questionCode=?";
		PreparedStatement pSm = sqlConnection.connectDB().prepareStatement(sql);
		pSm.setString(1, questionCode);
		ResultSet rs = pSm.executeQuery();
		Answer answer = null;
		while (rs.next()) {
			answer = new Answer();
			answer.setAnswerId(rs.getInt("answerId"));
			answer.setContent(rs.getString("content"));
			answer.setIsCorrect(rs.getInt("isCorrect"));
			answer.setQuestionCode(rs.getString("questionCode"));
			answerList.add(answer);
		}
		return answerList;
	}
	
	public int isCorrect(int answerId) {		 
		String sql = "select isCorrect from answer where answerId=?";
		int value = 0;
		try {
			PreparedStatement pSm = sqlConnection.connectDB().prepareStatement(sql);
			pSm.setInt(1, answerId);
			ResultSet rs = pSm.executeQuery();
			if(rs.next()) {
				value = rs.getInt("isCorrect");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return value;
	}
	
	public boolean insert(Answer ans) {
		String sql = "insert into question(content, isCorrect, questionCode) values(?, ?, ?)";
		try {
			PreparedStatement pSm = sqlConnection.connectDB().prepareStatement(sql);
			pSm.setString(1, ans.getContent());			
			pSm.setInt(2, ans.getIsCorrect());
			pSm.setString(3, ans.getQuestionCode());			
			pSm.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean update(Answer ans) {
		String sql = "update answer set content=?, isCorrect = ? where answerId=?";
		try {
			PreparedStatement pSm = sqlConnection.connectDB().prepareStatement(sql);
			pSm.setString(1, ans.getContent());			
			pSm.setInt(2, ans.getIsCorrect());
			pSm.setInt(3, ans.getAnswerId());			
			pSm.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	
}
