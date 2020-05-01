package day04;

import java.util.Scanner;

public class Ex01 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);

//		String a = scanner.next();
//		System.out.println(a);

//		int b = scanner.nextInt();
//		System.out.println(b);
		
//		String c = scanner.nextLine();
//		System.out.println(c);
		
		System.out.print("이름을 입력하세요 : ");
		String name = scanner.next();

		System.out.print("나이를 입력하세요 : ");
		int age = scanner.nextInt();
		
		System.out.println("당신의 이름은 " + name + "입니다.\n" +
							name + "님의 나이는 " + age + "세입니다.");
	}

}
