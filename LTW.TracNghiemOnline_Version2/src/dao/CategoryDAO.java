package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import common.MySQLConnection;
import model.Category;

/*
 * Lớp thực hiện việc truy vấn cơ sở dữ liệu trong bảng Category 
 * Created by: nnanh - 15/10/2018
 */

public class CategoryDAO {
	
	private MySQLConnection sqlConnection = new MySQLConnection();
	
	public CategoryDAO() {
		
	}
	
	public ArrayList<Category> getAllExam() throws SQLException {
		ArrayList<Category> categories = new ArrayList<Category>();
		String sql = "select * from category";
		Statement stm = sqlConnection.connectDB().createStatement();
		ResultSet rs = stm.executeQuery(sql);

		Category category = null;
		while (rs.next()) {
			category = new Category();
			category.setCategoryId(rs.getInt("categoryId"));
			category.setTitle(rs.getString("title"));
			category.setImage(rs.getString("image"));
			category.setDirection(rs.getString("direction"));
			categories.add(category);
		}
		return categories;
	}	
}
