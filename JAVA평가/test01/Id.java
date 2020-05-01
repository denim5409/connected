package test01;

import java.util.Scanner;
public class Id {
	public static void main(String[] args) {
		String id1 = "hong";
		String pass1 = "h1234";
		String id2 = "";
		String pass2 = "";
		Scanner scanner = new Scanner(System.in);

		System.out.print("ID를 입력하세요 : ");
		id2 = scanner.next();
		System.out.print("Password를 입력하세요 : ");
		pass2 = scanner.next();

		if ((id1.equals(id2))&&(pass1.equals(pass2))) {
			System.out.println("일치");
		} else {
			System.out.println("불일치");
		}
	}
}
