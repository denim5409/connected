package exam1402;
public class Example {

	public static void main(String[] args) {
//		Animal animal = new Animal();
//		animal.animalSound();
//		
//		Dog dog = new Dog();
//		dog.animalSound();

//다형성
//		Animal dog = new Dog();
//		dog.animalSound();
//상속을 통해서 다른 클래스의 속성과 메소드를 사용할수 있다.
//부모의 자료형에 상속을 받은 자식의 객체를 담는것을 다형성이라고 한다.

//		Animal cat = new Cat();
//		cat.animalSound();
		
//		Animal pig = new Pig(); 실행안된다(상속을 안받았음)
//============================================================
//		Animal animal = new Animal();
//		animal.sound(animal);
		
		Animal ani = new Dog();//다형성, 자동형변환
		ani.sound(ani);
		
//		Animal chi = new Chi();//다형성, 자동형변환
//		chi.sound(chi);
		
//		Dog d1 = (Dog)dog;//강제형변환(반드시 자동형변환이 된 것만 강제형변환이 가능하다)
		//다형성 : 메소드 재정의 + 형변환
		
		
	}

}
