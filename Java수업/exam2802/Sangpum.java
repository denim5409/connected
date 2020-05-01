package exam2802;

import java.util.Scanner;

public class Sangpum {
	//member field
	String sName;
	String sPrice;
	String sTotal;
	//constructor
	Scanner scanner = new Scanner(System.in);
	public Sangpum() {
		System.out.print("상품명 : ");
		sName = scanner.next();
		System.out.print("가격 : ");
		sPrice = scanner.next();
	}
	//method
	public void disp() {
		System.out.print("상품명 : " + sName + "\t");
		System.out.println("가격 : " + sPrice);
	}
}
