package demo.concurrent;

public class DemoJoin2 {
	public static void main(String args[]) throws InterruptedException {
		demo();
	}

	private static void demo() throws InterruptedException {

		Thread t1 = new Thread() {
			@Override
			public void run() {
				Thread.currentThread().setName("t1");
				System.out.println(Thread.currentThread().getName());
			}
		};

		Thread t2 = new Thread() {
			@Override
			public void run() {
				Thread.currentThread().setName("t2");
				System.out.println(Thread.currentThread().getName());
			}
		};

		t1.start();
		t2.start();

		t2.join();
		t1.join();

		System.out.println("hello");

	}
}
