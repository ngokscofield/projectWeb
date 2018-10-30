package model;

/*
 * Lớp thực thể chứa thông tin của người dùng bao gồm cả admin và client
 * role = 0: Client
 * role = 1: Admin
 * create by: nnanh - 15/10/2018
 * */

public class UserModel {	
	private int userID;
	private String fullname;
	private String email;
	private String phone;
	private String dateOfBirth;
	private String job;
	private int sex;
	private String password;
	private int role;
	
	public UserModel() {
		
	}
		
	public UserModel(String fullname, String email, String phone, String password) {
		super();
		this.fullname = fullname;
		this.email = email;
		this.phone = phone;
		this.password = password;
	}

	public UserModel(int userID, String fullname, String email, String phone, String password, int role) {
		super();
		this.userID = userID;
		this.fullname = fullname;
		this.email = email;
		this.phone = phone;
		this.password = password;
		this.role = role;
	}
	
	public UserModel(int userID, String fullname, String phone, String dateOfBirth, String job, int sex,
			String password) {
		super();
		this.userID = userID;
		this.fullname = fullname;
		this.phone = phone;
		this.dateOfBirth = dateOfBirth;
		this.job = job;
		this.sex = sex;
		this.password = password;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}
	
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public int getSex() {
		return sex;
	}

	public int getUserID() {
		return userID;
	}
	
	public void setUserID(int userID) {
		this.userID = userID;
	}
	
	public String getFullname() {
		return fullname;
	}
		
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public int getRole() {
		return role;
	}
	
	public void setRole(int role) {
		this.role = role;
	}		
}
