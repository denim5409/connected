package exam15;

public class Dog extends Animal {

	@Override
	void animalSound() {//부모한테 추상메소드가 있으면, 반드시 자식에게서 추상메소드를 재정의해야 함.
		System.out.println("-- 멍멍 --");
	}
	
}
