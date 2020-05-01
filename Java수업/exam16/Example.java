package exam16;

public class Example {

	public static void main(String[] args) {
		Animal ani1 = new Dog();
		ani1.animalSound();
		ani1.sleep();

		System.out.println("------------------------");

		Animal ani2 = new Cat();
		ani2.animalSound();
		ani2.sleep();

		System.out.println("------------------------");

		Animal ani3 = new Pig();
		ani3.animalSound();
		ani3.sleep();

		
	}

}
