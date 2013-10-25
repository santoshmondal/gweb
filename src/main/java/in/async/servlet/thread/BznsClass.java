package in.async.servlet.thread;

public class BznsClass {

	public static String operation1() {
		ThreadLocalContext tlc = ThreadLocalContext.get();
		System.out.println("Static::" + tlc.getrId() + ", " + tlc.getuId());
		return "static::" + tlc.getrId() + ",  " + tlc.getuId();
	}

	public String operation2() {
		ThreadLocalContext tlc = ThreadLocalContext.get();
		System.out.println("Object::" + tlc.getrId() + ", " + tlc.getuId());
		return "object::" + tlc.getrId() + ",  " + tlc.getuId();
	}
}
