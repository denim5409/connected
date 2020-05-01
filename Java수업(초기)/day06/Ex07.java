package day06;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ex07 {

	public static void main(String[] args) throws IOException {

		BufferedReader in = new BufferedReader(new InputStreamReader(System.in));

//방법1		
		String p = "";
		for (int i = 1 ; i <= 10 ; i = i + 1) {
			System.out.print("상품이름 : ");
			String name = in.readLine();
			System.out.print("가격 : ");
			String price = in.readLine();
			p = p + name + "........" + price + "원\n";
		}
		System.out.println(p);


//방법2		
//		String msg = "";
//		String n1 = "";
//		String n2 = "";
//		String n3 = "";
//		String n4 = "";
//		String n5 = "";
//
//		int p1 = 0;
//		int p2 = 0;
//		int p3 = 0;
//		int p4 = 0;
//		int p5 = 0;
//		
//		for (int i = 1 ; i <= 5 ; i = i + 1 ) {
//			System.out.print("상품명 : ");
//			String name = in.readLine();
//			System.out.print("가격 : ");
//			String p = in.readLine();
//			int price = Integer.parseInt(p);
//			
//			if (i == 1) {
//				n1 = name;
//				p1 = price;
//			} else if (i == 2) {
//				n2 = name;
//				p2 = price;
//			} else if (i == 3) {
//				n3 = name;
//				p3 = price;
//			} else if (i == 4) {
//				n4 = name;
//				p4 = price;
//			} else {
//				n5 = name;
//				p5 = price;
//			}
//		}
//		
//		String p = "";
//		p = p + n1 + "......." + p1 + "\n";
//		p = p + n2 + "......." + p2 + "\n";
//		p = p + n3 + "......." + p3 + "\n";
//		p = p + n4 + "......." + p4 + "\n";
//		p = p + n5 + "......." + p5;
//
//		System.out.println(p);
		
	}

}
