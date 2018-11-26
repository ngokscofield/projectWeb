package model;
/*
 * Lớp thực thể đề thi chứa thông tin về tiêu đề, file nghe
 * created by: nnanh - 15/10/2018
 * */
public class Exam {
	private int examId;
	private String title;
	private String audioPath;
	private String imagePath;
	
	public Exam() {
		
	}
	
	public Exam(int examId, String title, String audioPath, String imagePath) {
		super();
		this.examId = examId;
		this.title = title;
		this.audioPath = audioPath;
		this.setImagePath(imagePath);
	}

	public int getExamId() {
		return examId;
	}

	public void setExamId(int examId) {
		this.examId = examId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAudioPath() {
		return audioPath;
	}

	public void setAudioPath(String audioPath) {
		this.audioPath = audioPath;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}	
}
