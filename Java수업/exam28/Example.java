package exam28;

import java.util.ArrayList;
import java.util.Scanner;

public class Example {

	public static void main(String[] args) {
		ArrayList<Sangpum> arrayList = new ArrayList<Sangpum>();
		Scanner scan = new Scanner(System.in);
		
		while (true) {
			System.out.print("(조회:1, 입력:2, 그외:종료) : ");
			String menu = scan.next();
			if (menu.contentEquals("1")) {
				for (int i = 0; i < arrayList.size(); i = i + 1) {
					arrayList.get(i).disp();
				}
			} else if(menu.contentEquals("2")) {
				Sangpum imsi = new Sangpum();
				imsi.input();
				arrayList.add(imsi);
			} else {
				break;
			}
		}
		System.out.println("프로그램을 종료합니다.");
	}
}
