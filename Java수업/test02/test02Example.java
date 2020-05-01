package test02;

import java.util.ArrayList;
import java.util.Scanner;

public class test02Example {

	public static void main(String[] args) {
		ArrayList<Test> arrayList = new ArrayList<Test>();
		Scanner scan = new Scanner(System.in);
		while (true) {
			System.out.print("선택(0 : 조회,  1 : 입력,  그외 : 종료) : ");
			String menu = scan.next();
			
			if (menu.contentEquals("0")) {
				for (int i = 0; i < arrayList.size(); i = i +1) {
					arrayList.get(i).disp();
				}
			} else if (menu.contentEquals("1")) {
				Test t = new Test();
				t.input();
				arrayList.add(t);
			} else {
				break;
			}
		}
		System.out.println("프로그램을 종료합니다.");
	}

}
