package threadlocal;

public class PrintThreadContextValues {
	public static void printThreadContextValues() {
		System.out.println(CustomThreadLocal.get());
	}
}
