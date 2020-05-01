package exam13;

public class Example {

	public static void main(String[] args) {
		Dog d = new Dog("땡칠이",5);
		d.disp();
		d.sound();//메소드 재정의
		
		Cat c = new Cat("나비",7);
		c.disp();
		c.sound();//메소드 재정의
		
	}

}
