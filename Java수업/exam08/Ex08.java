package exam08;

public class Ex08 {
//	static int method1(int x, int y) {
//		return x + y;
//	}
//	static double method2(double x, double y) {
//		return x + y;
//	}
//	public static void main(String[] args) {
//		int result1 = method1(3,5);
//		double result2 = method2(3.0, 5.0);
//		System.out.println(result1);
//		System.out.println(result2);
//	}
	static int method(int x, int y) {
		return x + y;
	}
	static int method(int x, int y, int z) {
		return x + y;
	}
	static double method(double x, double y) {
		return x + y;
	}
	static double method(int x, double y) {
		return x + y;
	}
	static double method(double y, int x) {
		return x + y;
	}
	//괄호안의 매개변수 타입이 중복 안되면 동일한 것을 얼마든지 사용가능(오버로딩)
	
	public static void main(String[] args) {
		int result1 = method(3,5);
		double result2 = method(3.0, 5.0);
		System.out.println(result1);
		System.out.println(result2);
	}
}
//오버로딩(Overloading) : 메소드 이름이 같아도, 매개변수(뒤에 괄호안)타입이 같은것을 찾아서 자동으로 계산한다. 매개변수 타입은 무조건 달라야 한다.
//					   	매개변수, 생성자, 메소드
//오버라이딩(Overriding)