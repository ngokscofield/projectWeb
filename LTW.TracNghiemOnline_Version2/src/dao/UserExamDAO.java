package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import common.MySQLConnection;
import model.UserExam;

/*
 * Lớp thực hiện việc truy vấn cơ sở dữ liệu trong bảng UserExam 
 * Created by: nnanh - 15/10/2018
 */
public class UserExamDAO {

	private MySQLConnection sqlConnection = new MySQLConnection();
	
	public int timesDoTest(int userId, int examId) {
		String sql = "select count(*) as times from userexam\r\n" + 
					"where examId = ? and userId = ?";
		int times = 0;
		try {
			PreparedStatement pSm = sqlConnection.connectDB().prepareStatement(sql);
			pSm.setInt(1, examId);
			pSm.setInt(2, userId);
			ResultSet rs = pSm.executeQuery();
			if(rs.next()) {
				times = rs.getInt("times");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return times;
	}
	
	public int getLastId() {
		String sql = "select last_insert_id() as lastId";
		int lastId = 0;
		try {
			Statement stm = sqlConnection.connectDB().createStatement();
			ResultSet rs = stm.executeQuery(sql);
			if(rs.next()) {
				lastId = rs.getInt("lastId");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lastId;		
	}
	
	public boolean insert(UserExam ue) {
		String sql = "insert into userexam (times,userId,examId, correctNumber) values(?,?,?,?)";
		try {
			PreparedStatement pSm = sqlConnection.connectDB().prepareStatement(sql);
			pSm.setInt(1, ue.getTimes());
			pSm.setInt(2, ue.getUserId());
			pSm.setInt(3, ue.getExamId());
			pSm.setInt(4, ue.getCorrectNumber());
			pSm.executeUpdate();
			return true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
}
