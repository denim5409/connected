package day05;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ex06 {

	public static void main(String[] args) throws IOException {

		BufferedReader in = new BufferedReader(new InputStreamReader(System.in));

		//입력======================================================================
		System.out.print("상품명 : ");
		String name1 = in.readLine();
		System.out.print("가격 : ");
		String a = in.readLine();
		int value1 = Integer.parseInt(a);
		//처리======================================================================
		int p = 0;
			if (Integer.parseInt(a) >= 50000) {
				p = 10000;
			} else if (Integer.parseInt(a) > 30000) {
				p = 3000;
			} else if (Integer.parseInt(a) > 20000) {
				p = 2000;
			} else if (Integer.parseInt(a) > 10000) {
				p = 1000;
			} else  {
			}
		int point1 = p;

		//입력======================================================================
		System.out.print("상품명 : ");
		String name2 = in.readLine();
		System.out.print("가격 : ");
		a = in.readLine();
		int value2 = Integer.parseInt(a);
		//처리======================================================================
		p = 0;
			if (Integer.parseInt(a) >= 50000) {
			p = 10000;
			} else if (Integer.parseInt(a) > 30000) {
				p = 3000;
			} else if (Integer.parseInt(a) > 20000) {
				p = 2000;
			} else if (Integer.parseInt(a) > 10000) {
				p = 1000;
			} else  {
			}
		int point2 = p;

		//입력======================================================================
		System.out.print("상품명 : ");
		String name3 = in.readLine();
		System.out.print("가격 : ");
		a = in.readLine();
		int value3 = Integer.parseInt(a);
		//처리======================================================================
		p = 0;
			if (Integer.parseInt(a) >= 50000) {
				p = 10000;
			} else if (Integer.parseInt(a) > 30000) {
				p = 3000;
			} else if (Integer.parseInt(a) > 20000) {
				p = 2000;
			} else if (Integer.parseInt(a) > 10000) {
				p = 1000;
			} else  {
			}
		int point3 = p;

		//입력======================================================================
		System.out.print("상품명 : ");
		String name4 = in.readLine();
		System.out.print("가격 : ");
		a = in.readLine();
		int value4 = Integer.parseInt(a);
		//처리======================================================================
		p = 0;
			if (Integer.parseInt(a) >= 50000) {
				p = 10000;
			} else if (Integer.parseInt(a) > 30000) {
				p = 3000;
			} else if (Integer.parseInt(a) > 20000) {
				p = 2000;
			} else if (Integer.parseInt(a) > 10000) {
				p = 1000;
			} else  {
			}
		int point4 = p;

		//입력======================================================================
		System.out.print("상품명 : ");
		String name5 = in.readLine();
		System.out.print("가격 : ");
		a = in.readLine();
		int value5 = Integer.parseInt(a);
		//처리======================================================================
		p = 0;
			if (Integer.parseInt(a) >= 50000) {
				p = 10000;
			} else if (Integer.parseInt(a) >= 30000) {
				p = 3000;
			} else if (Integer.parseInt(a) >= 20000) {
				p = 2000;
			} else if (Integer.parseInt(a) >= 10000) {
				p = 1000;
			} else  {
			}
		int point5 = p;


		//처리======================================================================
		int total = value1 + value2 + value3 + value4 + value5;
		int pointTotal = point1 + point2 + point3 + point4 + point5;
		
		//출력======================================================================
		String printValue = "";
		printValue = printValue + "=============================\n";
		printValue = printValue + name1 + "..............." + value1 + "원(" + point1 + ")\n";
		printValue = printValue + name2 + "..............." + value2 + "원(" + point2 + ")\n";
		printValue = printValue + name3 + "..............." + value3 + "원(" + point3 + ")\n";
		printValue = printValue + name4 + "..............." + value4 + "원(" + point4 + ")\n";
		printValue = printValue + name5 + "..............." + value5 + "원(" + point5 + ")\n";
		printValue = printValue + "=============================\n";
		printValue = printValue + "합계..............." + total + "원(총 포인트 : " + pointTotal + "점)";
		
		System.out.println(printValue);		
		

	}

}
