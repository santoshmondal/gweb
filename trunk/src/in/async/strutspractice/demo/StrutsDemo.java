package in.async.strutspractice.demo;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;

public class StrutsDemo extends ActionSupport {

	private static final long serialVersionUID = 1L;
	public static String USER = "abcdef";

	private boolean bool = true;
	private String name;
	private String uname;
	private String email;
	private List<String> list;
	private Map<String, String> map;
	private final Date now = new Date();

	/**
	 * An Action Method
	 * 
	 * @return
	 */
	public String demo1() {
		setName("servlet");

		List<String> templist = new ArrayList<String>();
		templist.add("OOPS");
		templist.add("DS");
		templist.add("NW");
		templist.add("DB");
		setList(templist);

		Map<String, String> tempMap = new HashMap<String, String>();
		tempMap.put("rockstar", "mohit");
		tempMap.put("jaan", "sonunigam");
		tempMap.put("joker", "himesh");
		setMap(tempMap);

		return SUCCESS;
	}

	public String demo2() {
		return SUCCESS;
	}

	public String demo3() {
		return SUCCESS;
	}

	public String demo5() {

		return SUCCESS;
	}

	public String demo6() {
		addActionError("An action Error1");
		addActionError("An action Error2");

		addActionMessage("An action message1");
		addActionMessage("An action message2");

		addFieldError("name", "name cant be empty");
		addFieldError("unmae", "usename cnat be empty");

		return SUCCESS;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public List<String> getList() {
		return list;
	}

	public void setList(List<String> list) {
		this.list = list;
	}

	public Map<String, String> getMap() {
		return map;
	}

	public void setMap(Map<String, String> map) {
		this.map = map;
	}

	public Date getNow() {
		return now;
	}

	public boolean isBool() {
		return bool;
	}

	public void setBool(boolean bool) {
		this.bool = bool;
	}

	public String getDefaultSelect() {
		return "jsp";
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
