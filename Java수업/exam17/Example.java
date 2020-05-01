package exam17;

public class Example {
	public static void main(String[] args) {
//		RemoteControl rc1 = new Television();
//		rc1.turnOn();
//		rc1.setVolume(7);
//		rc1.turnOff();
//
//		System.out.println("-----------------------------");
//		
//		RemoteControl rc2 = new Audio();
//		rc2.turnOn();
//		rc2.setVolume(5);
//		rc2.turnOff();
	
//==================================================================
		
		RemoteControl rc = new Television();
		rc.turnOn();
		rc.setVolume(12);
		rc.turnOff();

		System.out.println("-----------------------------");
		
		rc = new Audio();
		rc.turnOn();
		rc.setVolume(100);
		rc.turnOff();
		
		
	
	}

}
