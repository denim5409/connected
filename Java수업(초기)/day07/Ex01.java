package day07;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ex01 {

	public static void main(String[] args) throws IOException {
		
//		int i = 20;
//		do {
//			System.out.println(i);
//			i = i + 1;
//		} while (i <= 10);
//		System.out.println("프로그램 종료");

		BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
		String dan = "";
		String con = "";
		int d = 0;
		int i = 0;
		do {
			System.out.print("단을 입력하세요 : ");
			dan = in.readLine();
			d = Integer.parseInt(dan);
			for (i = 1; i < 10; i = i + 1) {
				System.out.println(d + " * " + i + " = " + (d * i));
				System.out.print("계속하려면 \"y\"를, 종료하시려면 다른 키를 입력하세요. : ");
				con = in.readLine();
			}
		}	while (con.toLowerCase().equals("y"));
				System.out.println("프로그램을 종료합니다.");
	}
}
//  do {
//    실행문;
//  } while (종료하고자 하는 조건);
//	  	조건만족시 종료실행문;
//      조건 만족하지 않으면, do로 다시 돌아감.