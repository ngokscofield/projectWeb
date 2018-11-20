package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import common.MySQLConnection;
import model.Exam;

/*
 * Lớp thực hiện việc truy vấn cơ sở dữ liệu trong bảng Exam 
 * Created by: nnanh - 15/10/2018
 */
public class ExamDAO {
	
	private MySQLConnection sqlConnection = new MySQLConnection();
	
	public ExamDAO() {
		
	}
	
	public ArrayList<Exam> getAllExam(){
		ArrayList<Exam> examList = new ArrayList<Exam>();
		String sql = "select * from exam";
		Statement stm;
		try {
			stm = sqlConnection.connectDB().createStatement();
			ResultSet rs = stm.executeQuery(sql);
			Exam exam = null;
			while (rs.next()) {
				exam = new Exam();
				exam.setExamId(rs.getInt("examId"));
				exam.setAudioPath(rs.getString("audioPath"));
				exam.setImagePath(rs.getString("imagePath"));
				exam.setTitle(rs.getString("title"));
				examList.add(exam);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return examList;
	}	
	
	public Exam getDetail(int id) {
		String sql = "select * from exam where examId=?";
		Exam exam = null;
		try {
			PreparedStatement pSm = sqlConnection.connectDB().prepareStatement(sql);
			pSm.setInt(1, id);
			ResultSet rs = pSm.executeQuery();			
			if(rs.next()) {
				exam = new Exam();
				exam.setExamId(rs.getInt("examId"));
				exam.setAudioPath(rs.getString("audioPath"));
				exam.setImagePath(rs.getString("imagePath"));
				exam.setTitle(rs.getString("title"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return exam;
	}
}
