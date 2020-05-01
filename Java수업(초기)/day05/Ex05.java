package day05;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ex05 {

	public static void main(String[] args) throws IOException {

		//마트 영수증
		
		BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
		
		//입력======================================================================
		System.out.print("상품명 : ");
		String name1 = in.readLine();
		System.out.print("가격 : ");
		String a = in.readLine();
		int value1 = Integer.parseInt(a);
		System.out.print("상품명 : ");
		String name2 = in.readLine();
		System.out.print("가격 : ");
		a = in.readLine();
		int value2 = Integer.parseInt(a);
		System.out.print("상품명 : ");
		String name3 = in.readLine();
		System.out.print("가격 : ");
		a = in.readLine();
		int value3 = Integer.parseInt(a);
		System.out.print("상품명 : ");
		String name4 = in.readLine();
		System.out.print("가격 : ");
		a = in.readLine();
		int value4 = Integer.parseInt(a);
		System.out.print("상품명 : ");
		String name5 = in.readLine();
		System.out.print("가격 : ");
		a = in.readLine();
		int value5 = Integer.parseInt(a);

		//처리======================================================================
		int total = value1 + value2 + value3 + value4 + value5;
		int point = 0;

		if (total >= 50000) {
			point = 10000; 
		} else if (total >=30000) {
			point = 3000;
		} else if (total >=20000) {
			point = 2000;
		} else if (total >=10000) {
			point = 1000;
		} else {
			
		}
		
		//출력======================================================================
		String printValue = "";
		printValue = printValue + "=======================\n";
		printValue = printValue + name1 + "..............." + value1 + "원\n";
		printValue = printValue + name2 + "..............." + value2 + "원\n";
		printValue = printValue + name3 + "..............." + value3 + "원\n";
		printValue = printValue + name4 + "..............." + value4 + "원\n";
		printValue = printValue + name5 + "..............." + value5 + "원\n";
		printValue = printValue + "=======================\n";
		printValue = printValue + "합계..............." + total + "원(포인트 : " + point + "점)";
		
		System.out.println(printValue);

	}

}
