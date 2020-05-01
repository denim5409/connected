package exam15;
//추상클래스
abstract class Animal {//추상클래스, 클래스안에 추상메소드 하나라도 있으면 추상클래스임.
	abstract void animalSound();//추상메소드

	void sleep() {
		System.out.println("Zzz");
		
		
	}
}
