package model;

/*
 * Lớp Result: lưu lại kết quả của thí sinh sau khi làm xong bài
 * Bảng kết quả lưu lại tất cả các lần làm bài của thí sinh
 * 
 * created by: nnanh - 15/10/2018
 * */
public class Result {
	private int resultId;
	private int userExamId;
	private int answerSelected;
	private int timeTotal;
	private int score;
	
	public Result() {
		super();
	}

	public Result(int resultId, int userExamId, int answerSelected, int timeTotal, int score) {
		super();
		this.resultId = resultId;
		this.userExamId = userExamId;
		this.answerSelected = answerSelected;
		this.timeTotal = timeTotal;
		this.score = score;
	}

	public int getResultId() {
		return resultId;
	}

	public void setResultId(int resultId) {
		this.resultId = resultId;
	}

	public int getUserExamId() {
		return userExamId;
	}

	public void setUserExamId(int userExamId) {
		this.userExamId = userExamId;
	}

	public int getAnswerSelected() {
		return answerSelected;
	}

	public void setAnswerSelected(int answerSelected) {
		this.answerSelected = answerSelected;
	}

	public int getTimeTotal() {
		return timeTotal;
	}

	public void setTimeTotal(int timeTotal) {
		this.timeTotal = timeTotal;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}
	
	
	
}
