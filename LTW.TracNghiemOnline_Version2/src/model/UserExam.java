package model;

/*
 * Lớp trung gian kết nối giữa User và Exam
 * Một user có thể làm nhiều đề thi, một đề thi cũng có thể làm nhiều lần
 * Một đề thi có thể được làm bởi nhiều user
 * created by: nnanh - 15/10/2018
 * */
public class UserExam {
	private int userExamID;
	private int times;
	private int userId;
	private int examId;
	private int correctNumber;	

	public UserExam() {
		super();
	}

	public UserExam(int userExamID, int times, int userId, int examId, int correctNumber) {
		super();
		this.userExamID = userExamID;
		this.times = times;
		this.userId = userId;
		this.examId = examId;
		this.correctNumber = correctNumber;
	}

	public int getUserExamID() {
		return userExamID;
	}

	public void setUserExamID(int userExamID) {
		this.userExamID = userExamID;
	}

	public int getTimes() {
		return times;
	}

	public void setTimes(int times) {
		this.times = times;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getExamId() {
		return examId;
	}

	public void setExamId(int examId) {
		this.examId = examId;
	}	
	
	public int getCorrectNumber() {
		return correctNumber;
	}
	
	public void setCorrectNumber(int correctNumber) {
		this.correctNumber = correctNumber;
	}	
}
