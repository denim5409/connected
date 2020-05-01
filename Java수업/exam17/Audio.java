package exam17;

public class Audio implements RemoteControl {

	@Override
	public void turnOn() {
		System.out.println("-- Audio를 켭니다. --");
	}

	@Override
	public void turnOff() {
		System.out.println("-- Audio를 끕니다. --");
	}

	@Override
	public void setVolume(int i) {
		if (i > RemoteControl.MAX_VOLUME) {
			i = RemoteControl.MAX_VOLUME;
		} else if (i < RemoteControl.MIN_VOLUME) {
			i = RemoteControl.MIN_VOLUME;
		}
		System.out.println("-- Audio의 볼륨 크기를 " + i + "로 합니다. --");
	}

}
