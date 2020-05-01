package day04;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ex02 {

	public static void main(String[] args) throws IOException {

		BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("이름을 입력하세요 : ");
		String name = in.readLine(); //예외처리 선택해 줄 것
		
		System.out.print("나이를 입력하세요 : ");
		String age = in.readLine();

		System.out.println("당신의 이름은 " + name + "입니다. \n" + 
							name + "님 나이는 " + age + "세입니다.");

		
		
	}

}
