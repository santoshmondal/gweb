package in.async.strutspractice.demo;

import java.io.Serializable;

public class DataBean implements Serializable {

	private static final long serialVersionUID = 1L;
	private String fname;
	private String lname;

	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}

}
