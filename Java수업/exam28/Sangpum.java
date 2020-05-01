package exam28;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Scanner;

public class Sangpum {
	//member field
	String name;
	int price;
	String time;
	//constructor
	//method
	Scanner scanner = new Scanner(System.in);
	public void input() {
		System.out.print("상품이름 : ");
		name = scanner.next();
		System.out.print("가격 : ");
		price = scanner.nextInt();
		LocalDate nowTime = LocalDate.now();
		DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("yyyyMMdd");
		String nT = nowTime.format(myFormatObj);
		time = nT.substring(0,4)+"-"+nT.substring(4,6)+"-"+nT.substring(6,8);
	}
	public void disp() {
		System.out.print(name + "\t");
		System.out.print(price + "\t");
		System.out.println(time);
	}
}
