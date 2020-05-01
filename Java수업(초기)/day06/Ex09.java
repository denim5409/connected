package day06;

public class Ex09 {

	public static void main(String[] args) {

//		int i = 1;
//		while (i <= 10) {
//			System.out.println(i);
//			i = i + 1;//빠져나갈수 있는 조건을 반드시 명시
//		}

		int i = 1;
		int total = 0;
		String p = "";
		while (i <= 10) {
			total = total + i;
			p = p + i + ", 합계 : " + total + "\n";
			i = i + 1;
		}
		System.out.println(p);
	}

}
