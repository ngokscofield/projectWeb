package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import common.MySQLConnection;
import model.Question;

/*
 * Lớp thực hiện việc truy vấn cơ sở dữ liệu trong bảng Question 
 * Created by: nnanh - 15/10/2018
 */

public class QuestionDAO {
	
	private MySQLConnection sqlConnection = new MySQLConnection();
	
	public ArrayList<Question> getAllQuestion() throws SQLException {
		ArrayList<Question> questions = new ArrayList<Question>();
		String sql = "SELECT q.questionId, q.questionCode, q.content, q.image, q.categoryID, a.content as answerCorrect FROM question as q, answer as a\r\n" + 
				"where q.questionCode = a.questionCode\r\n" + 
				"and a.isCorrect = 1";
		Statement stm = sqlConnection.connectDB().createStatement();
		ResultSet rs = stm.executeQuery(sql);		
		
		Question qs = null;
		while (rs.next()) {
			qs = new Question();
			qs.setQuestionId(rs.getInt("questionId"));
			qs.setQuestionCode(rs.getString("questionCode"));
			qs.setContent(rs.getString("content"));
			qs.setImage(rs.getString("image"));
			qs.setCategoryId(rs.getInt("categoryId"));			
			qs.setAnswer(rs.getString("answerCorrect"));
			questions.add(qs);
		}
		return questions;
	}
	
	public ArrayList<Question> getQuestionByCategory(int categoryId) throws SQLException{
		ArrayList<Question> questions = new ArrayList<Question>();
		String sql = "SELECT q.questionId, q.questionCode, q.content, q.image, q.categoryID, a.content as answerCorrect FROM question as q, answer as a\r\n" + 
				"where q.questionCode = a.questionCode\r\n" + 
				"and a.isCorrect = 1\r\n" + 
				"and categoryID = ?";		
		PreparedStatement pSm = sqlConnection.connectDB().prepareStatement(sql);
		pSm.setInt(1, categoryId);
		ResultSet rs = pSm.executeQuery();
		Question qs = null;
		while (rs.next()) {
			qs = new Question();
			qs.setQuestionId(rs.getInt("questionId"));
			qs.setQuestionCode(rs.getString("questionCode"));
			qs.setContent(rs.getString("content"));
			qs.setImage(rs.getString("image"));
			qs.setCategoryId(rs.getInt("categoryId"));
			qs.setAnswer(rs.getString("answerCorrect"));
			questions.add(qs);
		}
		return questions;
	}
	
	public ArrayList<Question> getQuestionByExam(int examId, int categoryId) throws SQLException{
		ArrayList<Question> questions = new ArrayList<Question>();
		String sql = "SELECT q.questionId, q.questionCode, q.content, q.image, q.categoryID, a.content as answerCorrect \r\n" + 
				"FROM toeic.question as q, toeic.answer as a, toeic.questionexam as qExam\r\n" + 
				"where q.questionCode = a.questionCode\r\n" + 
				"	and q.questionId = qExam.questionId\r\n" + 
				"	and a.isCorrect = 1\r\n" + 
				"	and qExam.examId = ?\r\n" + 
				"	and categoryID=?";		
		PreparedStatement pSm = sqlConnection.connectDB().prepareStatement(sql);
		pSm.setInt(1, examId);
		pSm.setInt(2, categoryId);
		ResultSet rs = pSm.executeQuery();
		Question qs = null;
		while (rs.next()) {
			qs = new Question();
			qs.setQuestionId(rs.getInt("questionId"));
			qs.setQuestionCode(rs.getString("questionCode"));
			qs.setContent(rs.getString("content"));
			qs.setImage(rs.getString("image"));
			qs.setCategoryId(rs.getInt("categoryId"));
			qs.setAnswer(rs.getString("answerCorrect"));
			questions.add(qs);
		}
		return questions;
	}
	
	
	public ArrayList<Question> getQuestionExamByCategory(int examId, int categoryId){
		ArrayList<Question> questions = new ArrayList<Question>();
		String sql = "select * from question\r\n" + 
				"where questionId in (select questionexam.questionId \r\n" + 
				"						from question, questionexam \r\n" + 
				"						where questionexam.questionId = question.questionId\r\n" + 
				"						and questionexam.examId=?)\r\n" + 
				"and categoryID=?";
		PreparedStatement pSm;
		try {
			pSm = sqlConnection.connectDB().prepareStatement(sql);
			pSm.setInt(1, examId);
			pSm.setInt(2, categoryId);
			ResultSet rs = pSm.executeQuery();
			Question qs = null;
			while (rs.next()) {
				qs = new Question();
				qs.setQuestionId(rs.getInt("questionId"));
				qs.setQuestionCode(rs.getString("questionCode"));
				qs.setContent(rs.getString("content"));
				qs.setImage(rs.getString("image"));
				qs.setCategoryId(rs.getInt("categoryId"));
				questions.add(qs);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return questions;
	}	
	
	public boolean insert(Question qs) {
		String sql = "insert into question(questionCode, content, image, categoryId) values(?, ?, ?, ?)";
		try {
			PreparedStatement pSm = sqlConnection.connectDB().prepareStatement(sql);
			pSm.setString(1, qs.getQuestionCode());
			pSm.setString(2, qs.getContent());
			pSm.setString(3, qs.getImage());
			pSm.setInt(4, qs.getCategoryId());
			pSm.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean update(Question qs) {
		String sql = "update question set content=? where questionCode=?";
		try {
			PreparedStatement pSm = sqlConnection.connectDB().prepareStatement(sql);
			pSm.setString(1, qs.getQuestionCode());
			pSm.setString(2, qs.getContent());
			pSm.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public void getQuestion() {
		
	}
	
}
