package in.async.jquery.sortable;

import java.io.Serializable;

public class JQArticle implements Serializable {

	private static final long serialVersionUID = 1L;
	private String id;
	private String title;
	private String author;
	private String source;

	public JQArticle() {
		super();
	}

	public JQArticle(String id, String title, String author, String source) {
		super();
		this.id = id;
		this.title = title;
		this.author = author;
		this.source = source;
	}

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
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

}
