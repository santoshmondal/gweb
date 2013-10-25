package testcase;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class TestAction extends ActionSupport {

	public String test() throws Exception {

		System.out.println("test");
		String str = "hello";
		str.length();

		return SUCCESS;
	}

	public String test1() throws Exception {

		Map<String, Object> parameters = ActionContext.getContext().getParameters();

		System.out.println("test111");
		String str = "hello";
		str.length();

		return SUCCESS;
	}

}
