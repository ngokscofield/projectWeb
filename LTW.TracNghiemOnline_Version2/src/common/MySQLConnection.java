package common;

import java.sql.Connection;
import java.sql.DriverManager;

public class MySQLConnection {
	private static Connection conn;
	private String dbDriver = "com.mysql.jdbc.Driver";
	private String dbUrl = "jdbc:mysql://localhost:3306/toeic" + 
				"?useUnicode=true&characterEncoding=UTF-8";

	private String username = "root";
	private String password = "123456";
	public MySQLConnection() {
		try {
			if (conn == null || conn.isClosed()) {
				Class.forName(dbDriver);
				conn = DriverManager.getConnection(dbUrl, username, password);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public Connection connectDB(){
		return conn;
	}
}
