package day05;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ex08 {

	public static void main(String[] args) throws IOException {

		BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("숫자를 입력하세요: ");
		String a = in.readLine();
		int num = Integer.parseInt(a);
		String su = "";
		
		if (num%2 == 1) {
			su = "홀수";
		} else {
			su = "짝수";
		}
		
		String printValue = "입력하신 수 " + num + "은(는) " + su + "입니다.\n";
		printValue = printValue + "프로그램을 종료합니다.";
		
		System.out.println(printValue);

	}

}
