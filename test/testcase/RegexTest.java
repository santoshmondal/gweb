package testcase;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegexTest {

	public static final String REGEX_TEST = "This is my small example small string which I'm  small going to use for patternmatching.";

	public static void main(String args[]) {
		// regexSearch();
		// regexSearch1();
		//regex2();
		regex3();

	}

	public static void regex3() {
		// Match lowercase words.
		// Pattern pat = Pattern.compile("\\w+\\s+(is)");
		// Pattern pat = Pattern.compile("(this|.*?)\\s+");
		// String pattern = "small going";
		String pattern = "";
		pattern = pattern.replaceAll("\\s+", "|");

		System.out.println(pattern);

		if (pattern.isEmpty()) {
			System.out.println("No Operation");
			return;
		} else {
			pattern = "(" + pattern + ")";
		}

		Pattern pat = Pattern.compile(pattern, Pattern.CASE_INSENSITIVE);
		Matcher mat = pat.matcher(REGEX_TEST);

		//System.out.println(mat.find());

		while (mat.find()) {

			System.out.println("Match: " + mat.group() + "::" + mat.start());
		}
	}

	public static void regexSearch() {
		System.out.println(REGEX_TEST.matches("\\w.*"));
		String[] splitString = REGEX_TEST.split("\\s+");
		System.out.println(splitString.length);// Should be 14
		for (String string : splitString) {
			System.out.println(string);
		}
		// Replace all whitespace with tabs
		System.out.println(REGEX_TEST.replaceAll("\\s+", "\t"));
	}

	public static void regexSearch1() {
		Pattern pat;
		Matcher mat;
		boolean found;
		pat = Pattern.compile(" ");
		mat = pat.matcher("Java");

		found = mat.matches(); // check for a match
		System.out.println("Testing Java against Java.");
		if (found) {
			System.out.println("Matches");
		} else {
			System.out.println("No Match");
		}
		System.out.println();
		System.out.println("Testing Java against Java SE 6.");
		mat = pat.matcher("Java SE 6"); // create a new matcher
		found = mat.matches(); // check for a match
		if (found) {
			System.out.println("Matches");
		} else {
			System.out.println("No Match");
		}
	}

	public static void regex2() {
		Pattern pat = Pattern.compile("Java");
		Matcher mat = pat.matcher("Java SE 6");
		System.out.println("Looking for Java in Java SE 6.");
		if (mat.find()) {
			System.out.println("subsequence found");
		} else {
			System.out.println("No Match");
		}
	}

}
