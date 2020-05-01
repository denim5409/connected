package exam18;

public class DemoClass implements FirstInterface, SecondInterface {//다중 인터페이스

	@Override
	public void method2() {
		System.out.println("-- method02 --");
	}

	@Override
	public void method1() {
		System.out.println("-- method01 --");
		
	}

}
