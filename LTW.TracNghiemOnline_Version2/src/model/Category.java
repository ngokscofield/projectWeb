package model;

/*
 * Lớp Category: là các part trong bài thi toeic
 * created by: nnanh - 15/10/2018
 * */
public class Category {
	private int categoryId;
	private String title;
	private String direction;
	private String image;
		
	public Category() {
		super();
	}

	public Category(int categoryId, String title, String direction, String image) {
		super();
		this.categoryId = categoryId;
		this.title = title;
		this.direction = direction;
		this.image = image;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDirection() {
		return direction;
	}

	public void setDirection(String direction) {
		this.direction = direction;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}			
}
