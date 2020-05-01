package test04;

import java.util.ArrayList;
import java.util.Scanner;

public class StudentExample {
	public static void main(String[] args) {
		ArrayList<Student> arrayList = new ArrayList<Student>();
		Scanner scan = new Scanner(System.in);
		String menu;
		Student s1 = new Student();
		while(true) {
			System.out.print("선택(1:조회, 2:등록, 기타:종료) : ");
			menu = scan.next();
			if (menu.equals("1")) {
				s1.disp1();
				for (int i = 0; i<arrayList.size(); i = i + 1) {
					arrayList.get(i).disp2();
				}
				s1.disp3();
			} else if (menu.equals("2")) {
				Student s2 = new Student();
				s2.input();
				arrayList.add(s2);
			} else {
				break;
			}
		}
		System.out.println("프로그램을 종료합니다.");
	}
}
