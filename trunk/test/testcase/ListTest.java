package testcase;

import java.util.ArrayList;
import java.util.List;

public class ListTest {

	public static void main(String args[]) {
		test1();
	}

	public static void test1() {
		List<String> list = new ArrayList<String>();
		list.add("jai1");
		list.add("jai2");
		list.add("jai3");
		list.add("jai4");
		list.add("jai5");

		System.out.println(list);

		list.add(0, "jai0");
		System.out.println(list);
	}

}
