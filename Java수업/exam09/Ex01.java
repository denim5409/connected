package exam09;

public class Ex01 {
	static int i = 15;//전역변수
	static void ppp() {
		++i;
		System.out.println(i);//16
	}
	static void qqq() {
		i = i + 5;
		System.out.println(i);//21
	}
	public static void main(String[] args) {
		System.out.println(i);
		ppp();
		qqq();
	}
}
//접근제한자
//public : 제한이 없다
//default : 같은 패키지에서만 가능하다.
//private : 자기 class 내에서만 사용할 수 있다.