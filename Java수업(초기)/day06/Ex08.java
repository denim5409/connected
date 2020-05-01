package day06;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ex08 {

	public static void main(String[] args) throws IOException {

		BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
		
		String print = "";
		int potot = 0;
		int total = 0;
		print = print + "============================================\n";
		for (int i = 1; i <= 10; i = i + 1) {
			System.out.print("상품명 : ");
			String name = in.readLine();
			System.out.print("가격 : ");
			String price = in.readLine();
			int a = Integer.parseInt(price);
			int point = 0;
			total = total + a;
			
			if (a >= 50000) {
				point = 10000;  
			} else if (a >= 30000) {
				point = 2990;
			} else if (a >= 20000) {
				point = 1890;
			} else if (a >= 10000) {
				point = 590;
			} else {
				point = 0;
			}
			potot = potot + point;

			print = print + name + "........";
			print = print + price + "(" + point + ")\n";
		}
		print = print + "============================================\n";
		print = print + "합계........" + total + "(" + potot + ")";

		System.out.println(print);

	}

}
