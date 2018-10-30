package model;
/*
 * Lớp thực thể mô phỏng bảng Question trong CSDL 
 * created by: nnanh - 15/10/2018
 * */
public class Question {
	private int questionId;
	private String questionCode;
	private String content;
	private String image;
	private int categoryId;
	private String answer;

	public Question() {
		super();
	}

	public Question(int questionId, String questionCode, String content, String image, int categoryId) {
		super();
		this.questionId = questionId;
		this.questionCode = questionCode;
		this.content = content;
		this.image = image;
		this.categoryId = categoryId;
	}

	public int getQuestionId() {
		return questionId;
	}

	public void setQuestionId(int questionId) {
		this.questionId = questionId;
	}

	public String getQuestionCode() {
		return questionCode;
	}

	public void setQuestionCode(String questionCode) {
		this.questionCode = questionCode;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}
}
