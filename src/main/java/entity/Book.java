package entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Book {
	
	@Id
	private String id;
	private String title;
	private String Author;
	private String genre;
	private String status;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return Author;
	}
	public void setAuthor(String author) {
		Author = author;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Book [id=" + id + ", title=" + title + ", Author=" + Author + ", genre=" + genre + ", status=" + status
				+ "]";
	}
	public Book(String id, String title, String author, String genre, String status) {
		super();
		this.id = id;
		this.title = title;
		Author = author;
		this.genre = genre;
		this.status = status;
	}
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	

}
