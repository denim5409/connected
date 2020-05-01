package day05;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ex07 {

	public static void main(String[] args) throws IOException {

		BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
		System.out.print("1~7까지 숫자중 하나를 입력하세요 : ");
		String a = in.readLine();
		int day = Integer.parseInt(a);
		
		switch (day) {
		case 1 :
			System.out.println("월");
			break;
		case 2 :
			System.out.println("화");
			break;
		case 3 :
			System.out.println("수");
			break;
		case 4 :
			System.out.println("목");
			break;
		case 5 :
			System.out.println("금");
			break;
		case 6 :
			System.out.println("토");
			break;
		case 7 :
			System.out.println("일");
			break;
		default :
			System.out.println("오류 : 1~7사이 숫자중 하나만 입력하세요!!");
			break;
		}
	}

}
