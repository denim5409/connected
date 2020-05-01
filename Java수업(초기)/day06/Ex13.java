package day06;

import java.util.Scanner;

public class Ex13 {

	public static void main(String[] args) {

		Scanner s = new Scanner(System.in);
//		System.out.print("라인수 입력 : ");
//		int lin = s.nextInt();
//		int i = 0;
//		String p = "";
//		while (true) {
//			i = i + 1;
//			if (i <= lin) {
//				p = p + "*";
//				System.out.println(p);
//			} else {
//				break;
//			} 
//		}

		System.out.print("라인수 입력 : ");
		int n = s.nextInt();
		for (int i = 1; i <= n; i = i + 1 ) {
			for (int j = 1; j <= i; j = j+1) {
				System.out.print("*");
			}
			System.out.println();
		}

		for (int i = n; i > 0; i = i - 1) {
			for (int j = 1; j <= i; j = j + 1) {
				System.out.print("*");
			}
			System.out.println();
		}
	}
}
