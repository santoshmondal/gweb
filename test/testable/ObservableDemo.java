package testable;

import java.util.Observable;
import java.util.Observer;

public class ObservableDemo implements Observer {
	public String name;

	static Observable obj = new Observable() {
		@Override
		public void notifyObservers(Object arg) {
			super.setChanged();
			super.notifyObservers(arg);
		}
	};

	public ObservableDemo(String name) {
		this.name = name;
	}

	public static void main(String[] args) {
		// create watched and watcher objects
		ObservedObject watched = new ObservedObject("Original Value");

		// watcher object listens to object change
		ObservableDemo watcher = new ObservableDemo("Watcher");
		ObservableDemo watcher1 = new ObservableDemo("Watcher");

		// add observer to the watched object
		watched.addObserver(watcher);
		watched.addObserver(watcher1);

		// trigger value change
		System.out.println("setValue method called...");
		watched.setValue("New llll");

		obj.addObserver(watcher);
		obj.addObserver(watcher1);
		obj.notifyObservers("some values");

	}

	@Override
	public void update(Observable obj, Object arg) {
		System.out.println("Update called::" + arg);
	}
}
