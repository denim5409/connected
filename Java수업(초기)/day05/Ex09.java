package day05;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ex09 {

	public static void main(String[] args) throws IOException {

		BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("년도를 입력하세요 : ");
		String y = in.readLine();
		int year = Integer.parseInt(y);
		String yun = "";
		
//		if ((year%4 == 0 && year%400 == 0) || (year%4 == 0 && year%100 != 0)) {
//			yun = "윤년";
//		} else {
//			yun = "평년";
//		}

		if (year%4 == 0) {
			if (year%400 == 0 || year%100 != 0) {
				yun = "윤년";
			} else {
				yun = "평년";
			}
		} else {
			yun = "평년";
		}
		String printValue = y + "년은 " + yun + "입니다.";
		System.out.println(printValue);
		
		//윤년 : 4년마다 돌아오지만, 100으로 나누었을때 떨어지면 평년이다. 단 400으로 나눴을때 떨어지면 윤년이다.
		
	}

}


