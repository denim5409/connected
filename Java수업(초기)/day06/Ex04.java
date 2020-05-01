package day06;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ex04 {

	public static void main(String[] args) throws IOException {
	
		BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
		System.out.print("단수를 입력하세요 : ");
		String dan = in.readLine();
		int x = Integer.parseInt(dan);
		
//		for (int i = 1 ; i <= 9 ; i = i + 1) {
//			System.out.println(x + " * " + i + " = " + (x * i));
//		}

//		for (int i = 1 ; i <= 9 ; i = i + 1) {
//			if (i%2 == 1) {//홀수만
//				System.out.println(x + " * " + i + " = " + (x * i));
//			}
//		}
	
		for (int i = 1 ; i <= 9 ; i = i + 1) {
			if (i%3 == 0) {//3의 배수만
				System.out.println(x + " * " + i + " = " + (x * i));
			}
		}

		
	}

}
