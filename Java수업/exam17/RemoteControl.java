package exam17;

public interface RemoteControl {
	public static final int MIN_VOLUME = 0;
	public static final int MAX_VOLUME = 10;
	
	void turnOn();
	void turnOff();
	void setVolume(int i);
	
}
