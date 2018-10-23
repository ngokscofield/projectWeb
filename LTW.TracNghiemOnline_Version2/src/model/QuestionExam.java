package model;

/*
 * Lớp trung gian kết nối giữa Question và Exam
 * 1 đề thi có thể có nhiều câu hỏi
 * Mỗi câu hỏi có thể thuộc vào nhiều đề thi
 * created by: nnanh - 15/10/2018
 * */
public class QuestionExam {
	private int examId;
	private int questionId;

	public QuestionExam() {
		super();
	}

	public QuestionExam(int examId, int questionId) {
		super();
		this.examId = examId;
		this.questionId = questionId;
	}

	public int getExamId() {
		return examId;
	}

	public void setExamId(int examId) {
		this.examId = examId;
	}

	public int getQuestionId() {
		return questionId;
	}

	public void setQuestionId(int questionId) {
		this.questionId = questionId;
	}
}
