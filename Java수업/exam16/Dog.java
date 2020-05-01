package exam16;

public class Dog implements Animal {//±¸ÇöÅ¬·¡½º

	@Override
	public void animalSound() {
		System.out.println("-- ¸Û¸Û --");
	}

	@Override
	public void sleep() {
		System.out.println("-- Dog Zzz --");
		
	}
	
	
}
