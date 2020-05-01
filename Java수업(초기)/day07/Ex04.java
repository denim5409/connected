package day07;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ex04 {

	public static void main(String[] args) throws IOException {

		BufferedReader in = new BufferedReader (new InputStreamReader(System.in));
//		String[] name = new String[5];
//		int[] price = new int[5];
//		int total = 0;
//		int i = 0;
//		String print = "";
//		for (i = 0; i < name.length; i = i + 1) {
//			System.out.print("상품명 : ");
//			name[i] = in.readLine(); 
//			System.out.print("가격 : ");
//			price[i] = Integer.parseInt(in.readLine());
//			print = print + name[i] + " ...... " + price[i] + "\n";
//			total = total + price[i];
//		}
//		print = print + "=====================\n";
//		print = print + "합계 ......" + total + "원";
//		System.out.println(print);

		String name;
		String price;
		String sp;
		String[] array = new String[5];

		for (int i = 0; i < 5; i = i + 1) {
			System.out.print("상품명 : ");
			name = in.readLine(); 
			System.out.print("가격 : ");
			price = in.readLine();
			sp = name + "," + price;
			array[i] = sp;
		}

		int tot = 0;
		
		for (int i = 0 ; i < array.length;i = i + 1) {
			String[] imsi = array[i].split(",");
			tot = tot + Integer.parseInt(imsi[1]);
		}
		
		System.out.println("==========================");
		System.out.println("상품명 \t ......\t 가격");
		System.out.println("==========================");

		for (int i = 0 ; i < 5 ; i = i + 1) {
			
			String[] imsi = array[i].split(",");
			System.out.println(imsi[0] + " \t ..... \t" + imsi[1]);
		}
		
		System.out.println("==========================");
		System.out.println("합계 \t ......\t" + tot);
		System.out.println("==========================");
	}

}


