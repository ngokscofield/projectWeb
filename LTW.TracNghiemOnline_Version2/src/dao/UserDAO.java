package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import common.MySQLConnection;
import model.UserModel;

/*
 * Lớp dùng để thực hiện việc truy vấn CSDL vào bảng User
 * created by: nnanh - 15/10/2018
 * */
public class UserDAO {
	private MySQLConnection sqlConnection = new MySQLConnection();

	/*
	 * hàm xử lý thông tin đăng nhập
	 */
	public UserModel login(String email, String password) {
		String sql = "select * from user where email = ? and password = ?";
		UserModel model = null;

		try {
			PreparedStatement pSm = sqlConnection.connectDB().prepareStatement(sql);
			pSm.setString(1, email);
			pSm.setString(2, password);
			ResultSet rs = pSm.executeQuery();
			if (rs.next()) {
				model = new UserModel();
				model.setUserID(rs.getInt("userId"));
				model.setFullname(rs.getString("fullname"));
				model.setPassword(rs.getString("password"));
				model.setEmail(rs.getString("email"));
				model.setRole(rs.getInt("role"));				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return model;
	}

	/*
	 * hàm lấy thông tin quyền của user role = 1: Admin role = 0: member
	 */
	public int getRole(String email) {
		String sql = "SELECT role FROM account WHERE email=?";
		int role = 0;
		try {
			PreparedStatement pSm = sqlConnection.connectDB().prepareStatement(sql);
			pSm.setString(1, email);
			ResultSet res = pSm.executeQuery();
			if (res.next()) {
				role = res.getInt("role");
				// System.out.println(role);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return role;
	}

	public boolean findUser(String email) {
		String sql = "select * from user where email=?";
		try {
			PreparedStatement pSm = sqlConnection.connectDB().prepareStatement(sql);
			pSm.setString(1, email);
			ResultSet rs = pSm.executeQuery();
			if(rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public UserModel getUserById(int userId) {
		String sql = "select * from user where userId=?";
		UserModel model = null;
		try {
			PreparedStatement pSm = sqlConnection.connectDB().prepareStatement(sql);
			pSm.setInt(1, userId);
			ResultSet rs = pSm.executeQuery();
			if (rs.next()) {
				model = new UserModel();
				model.setUserID(rs.getInt("userId"));
				model.setFullname(rs.getString("fullname"));
				model.setPassword(rs.getString("password"));
				model.setEmail(rs.getString("email"));
				model.setRole(rs.getInt("role"));
				model.setDateOfBirth(rs.getString("dateOfBirth"));
				model.setJob(rs.getString("job"));
				model.setPhone(rs.getString("phone"));
				model.setSex(rs.getInt("sex"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return model;
	}
	/*
	 * Lấy thông tin tất cả user có trong CSDL
	 */
	public ArrayList<UserModel> getAllUser() throws SQLException {
		ArrayList<UserModel> stdList = new ArrayList<UserModel>();
		String sql = "select * from user";
		Statement stm = sqlConnection.connectDB().createStatement();
		ResultSet rs = stm.executeQuery(sql);

		UserModel model = null;
		while (rs.next()) {
			model = new UserModel();
			model.setUserID(rs.getInt("userId"));
			model.setFullname(rs.getString("fullname"));
			model.setPassword(rs.getString("password"));
			model.setEmail(rs.getString("email"));
			model.setRole(rs.getInt("role"));
			model.setPhone(rs.getString("phone"));
			model.setDateOfBirth(rs.getString("dateOfBirth"));
			model.setJob(rs.getString("job"));
			model.setSex(rs.getInt("sex"));
			stdList.add(model);
		}
		return stdList;
	}

	/*
	 * Hàm thêm user vào CSDL
	 */
	public boolean insert(UserModel model) {
		String sql = "INSERT INTO user (fullname, password, email, phone) VALUES(?, ?, ?, ?)";
		try {
			PreparedStatement pSm = sqlConnection.connectDB().prepareStatement(sql);
			pSm.setString(1, model.getFullname());
			pSm.setString(2, model.getPassword());
			pSm.setString(3, model.getEmail());
			pSm.setString(4, model.getPhone());
			pSm.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	public boolean update(UserModel model) {
		String sql = "update user set password=?, fullname = ?, dateOfBirth = ?, phone = ?, job = ?, sex = ? where userId=?";
		try {
			PreparedStatement pSm = sqlConnection.connectDB().prepareStatement(sql);
			pSm.setString(1, model.getPassword());
			pSm.setString(2, model.getFullname());
			pSm.setString(3, model.getDateOfBirth());
			pSm.setString(4, model.getPhone());
			pSm.setString(5, model.getJob());
			pSm.setInt(6, model.getSex());
			pSm.setInt(7, model.getUserID());
			pSm.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	public boolean delete(int userId) {
		String sql = "delete from user where userId=?";
		try {
			PreparedStatement pSm = sqlConnection.connectDB().prepareStatement(sql);
			pSm.setInt(1, userId);
			pSm.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public int totalRecord() {
		String sql = "SELECT count(*) as record FROM user;";
		int record = 0;
		try {
			Statement stm = sqlConnection.connectDB().createStatement();
			ResultSet rs = stm.executeQuery(sql);
			if(rs.next()) {
				record = rs.getInt("record");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return record;
		
	}
}
