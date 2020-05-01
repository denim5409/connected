package day04;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ex0203 {

	public static void main(String[] args) throws IOException {

		BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
		System.out.print("이름을 입력하세요 : ");  
		String name = in.readLine();
		
		System.out.print("월급을 입력하세요 : ");  
		String a = in.readLine();
		
		//보너스 : 월급의 600%
		//연봉 : 12개월치 월급 + 보너스

		int pay = Integer.parseInt(a);
		int bonus = pay * 6;
		int total = (pay * 12) + bonus;
		
		String printValue = "";
		
		printValue = printValue + "이름 : " + name + "\t";
		printValue = printValue + "월급 : " + pay + "만원\t";
    	printValue = printValue + "보너스 : " + bonus + "만원\t";
    	printValue = printValue + "총액 : " + total + "만원";
		
		System.out.println(printValue);
		
	}

}
