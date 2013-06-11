package in.async.spring.intro;

public class Hello {

	private String arg1;
	private String arg2;
	private int intArg;
	private Student stud;

	public Hello() {
	}

	public Hello(String arg1, String arg2) {
		this.arg1 = arg1;
		this.arg2 = arg2;
	}

	public Hello(String arg1, int intArg) {
		this.arg1 = arg1;
		this.intArg = intArg;
	}

	public String sayHello() {
		return "Hello Spring!!!";
	}

	public String sayHC() {
		return arg1 + arg2;
	}

	public String sayHCInt() {
		return arg1 + "::" + intArg;
	}

	public String sayGSHi() {
		return arg1 + "::" + arg2 + "::" + intArg;
	}

	public Student getHIStudent() {
		return stud;
	}

	public String getArg1() {
		return arg1;
	}

	public void setArg1(String arg1) {
		this.arg1 = arg1;
	}

	public String getArg2() {
		return arg2;
	}

	public void setArg2(String arg2) {
		this.arg2 = arg2;
	}

	public int getIntArg() {
		return intArg;
	}

	public void setIntArg(int intArg) {
		this.intArg = intArg;
	}

	public Student getStud() {
		return stud;
	}

	public void setStud(Student stud) {
		this.stud = stud;
	}

}
