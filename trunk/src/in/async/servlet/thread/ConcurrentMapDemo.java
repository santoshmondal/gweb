package in.async.servlet.thread;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;

public class ConcurrentMapDemo {

	// private static ConcurrentMap<String, String> hm = new
	// ConcurrentHashMap<String, String>();
	private static Map<String, String> hm = new HashMap<String, String>();

	public static void main(String args[]) {

		Executors.newCachedThreadPool().submit(new Runnable() {
			@Override
			public void run() {

				int i = 0;
				while (i < 1000) {
					hm.put(String.valueOf(i), String.valueOf(i));
					System.out.println("THREAD1::" + hm.size());
					i++;
				}
			}
		});

		Executors.newCachedThreadPool().submit(new Runnable() {
			@Override
			public void run() {

				int i = 101;
				while (i < 1000) {
					hm.put(String.valueOf(i), String.valueOf(i));
					System.out.println("THREAD2::" + hm.size());
					i++;
				}
			}
		});
	}
}
