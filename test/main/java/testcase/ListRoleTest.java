package testcase;

import java.util.ArrayList;
import java.util.List;

public class ListRoleTest {

	public static void main(String args[]) {

		List<String> list = new ArrayList<String>();
		//list.add("admin");
		//list.add("editor");

		list.add("reporter");
		list.add("admin");

		System.out.println(list);

		if (list.contains("editor") && list.size() > 1) {
			list.remove("editor");
			list.add(0, "editor");
		}

		if (list.contains("admin") && list.size() > 1) {
			list.remove("admin");
			list.add(1, "admin");
		}

		if (list.contains("reporter") && list.size() > 2) {
			list.remove("reporter");
			list.add(2, "reporter");
		}

		System.out.println(list);
	}

}
