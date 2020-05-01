package exam01;

class MyClass {

	//Member Field : 멤버 변수
	int x = 100;
	int y = 200;
	
	//Constructor : 생성자
	public MyClass() {
		
	}

	//Method : 멤버 메소드(public이 붙을수도 있고 안붙을수도 있다
	public void aaa() {
		
	}
	
}

public class Ex02 {
	public static void main(String[] args) {
		MyClass m1 = new MyClass(); //객체생성
		System.out.println(m1.x);
		System.out.println(m1.y);

		MyClass m2 = new MyClass(); //객체생성
		System.out.println(m2.x);
		System.out.println(m2.y);


	
	}

}
