package exam13;

public class Animal {
	String name;
	int age;
	
	public Animal() {
		
	}
	public Animal(String name, int age) {
		this.name = name;
		this.age = age;
	}

	void sound() {
		System.out.println("--Animal sound() --");
	}
	void disp() {
		System.out.println(("이름 : " + name + ", 나이 : " + age));
	}

}
