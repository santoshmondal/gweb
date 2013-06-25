package testable;

import java.util.Observable;

public class ObservedObject extends Observable {
	private String watchedValue;
	private final String name;

	public ObservedObject(String value) {
		watchedValue = value;
		name = "java";
	}

	public void setValue(String value) {
		// if value has changed notify observers
		if (!watchedValue.equals(value)) {
			watchedValue = value;

			// mark as value changed
			setChanged();
			notifyObservers(value);
		}
	}

}
