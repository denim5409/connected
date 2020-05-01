package exam13;

public class Dog extends Animal {
	public Dog(String name, int age) {
		super(name, age);//부모클래스의 매개변수
	}
	void sound() {
		super.sound();
		System.out.println("멍멍");
	}
}
