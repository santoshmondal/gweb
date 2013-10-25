package in.async.servlet.thread;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public class ThreadLocalContext {

	private static AtomicInteger aim = new AtomicInteger(0);
	private static AtomicReference<String> ar = new AtomicReference<String>();

	private static final ThreadLocal<ThreadLocalContext> threadLocal = new ThreadLocal<ThreadLocalContext>() {
		@Override
		protected ThreadLocalContext initialValue() {
			ThreadLocalContext tlc = new ThreadLocalContext();
			ar.set("default");
			tlc.setrId(aim.getAndIncrement());

			return tlc;
		}
	};

	public static ThreadLocalContext get() {
		return threadLocal.get();
	}

	private int rId;
	private String uId;

	public int getrId() {
		return rId;
	}

	public void setrId(int rId) {
		this.rId = rId;
	}

	public String getuId() {
		return uId;
	}

	public void setuId(String uId) {
		this.uId = uId;
	}

	public static AtomicReference<String> getAr() {
		return ar;
	}

	public static void setAr(AtomicReference<String> ar) {
		ThreadLocalContext.ar = ar;
	}

}
