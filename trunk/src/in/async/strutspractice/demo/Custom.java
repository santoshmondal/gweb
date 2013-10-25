package in.async.strutspractice.demo;

import com.opensymphony.xwork2.ActionSupport;

public class Custom extends ActionSupport {

	private static final long serialVersionUID = 1L;

	public String cAction1() {
		System.out.println("cAction1");
		return NONE;
	}

}
