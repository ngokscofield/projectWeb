package dao;


import java.sql.PreparedStatement;
import java.sql.SQLException;

import common.MySQLConnection;
import model.Result;

/*
 * Lớp thực hiện việc truy vấn cơ sở dữ liệu trong bảng Result 
 * Created by: nnanh - 15/10/2018
 */
public class ResultDAO {
	private MySQLConnection sqlConnection = new MySQLConnection();
	
	public ResultDAO(){
		
	}
	
	public boolean insert(Result result) {
		String sql = "insert into result (userExamId, answerSelected) values (?, ?)";
		try {
			PreparedStatement pSm = sqlConnection.connectDB().prepareStatement(sql);
			pSm.setInt(1, result.getUserExamId());
			pSm.setInt(2, result.getAnswerSelected());
			//pSm.setInt(3, result.getTimeTotal());
			//pSm.setInt(4, result.getScore());
			pSm.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
}
