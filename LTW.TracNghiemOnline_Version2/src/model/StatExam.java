package model;

/*
 * Lớp thống kê tất cả bài làm của user, chỉ tính bài có thành tích tốt nhất
 * Created by nnanh - 25/10/2018
 */
public class StatExam {
	private Exam exam;	
	private int highScore;	
	private int userId;	
	
	public StatExam() {
		super();
	}
	
	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}


	public Exam getExam() {
		return exam;
	}

	public void setExam(Exam exam) {
		this.exam = exam;
	}

	public int getHighScore() {
		return highScore;
	}

	public void setHighScore(int highScore) {
		this.highScore = highScore;
	}

	
}
