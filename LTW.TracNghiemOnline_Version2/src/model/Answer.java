package model;

/*
 * Lớp Answer lưu đáp án của các câu hỏi và đánh dấu đáp án đúng
 * isCorrect = 0: Đáp án sai
 * isCorrect = 1: Đán án đúng
 * created by: nnanh - 15/10/2018
 * */
public class Answer {
	private int answerId;
	private String content;
	private int isCorrect;
	private String questionCode;

	public Answer() {
		super();
	}

	public Answer(int answerId, String content, int isCorrect, String questionCode) {
		super();
		this.answerId = answerId;
		this.content = content;
		this.isCorrect = isCorrect;
		this.questionCode = questionCode;
	}

	public int getAnswerId() {
		return answerId;
	}

	public void setAnswerId(int answerId) {
		this.answerId = answerId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getIsCorrect() {
		return isCorrect;
	}

	public void setIsCorrect(int isCorrect) {
		this.isCorrect = isCorrect;
	}

	public String getQuestionCode() {
		return questionCode;
	}

	public void setQuestionCode(String questionCode) {
		this.questionCode = questionCode;
	}

}
