package demo.concurrent.itc;

public class ItcDemo {

	public static void main(String[] args) {

		Message message = new Message("Howdy");

		Waiter waiter = new Waiter(message);
		Thread waiterThread = new Thread(waiter, "waiterThread");
		waiterThread.start();

		Notifier notifier = new Notifier(message);
		Thread notifierThread = new Thread(notifier, "notifierThread");
		notifierThread.start();

	}
}
