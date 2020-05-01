package pt01;

import java.util.ArrayList;
import java.util.Scanner;

public class StudentExample {

	public static void main(String[] args) {
		ArrayList<Student> arrayList = new ArrayList<Student>();
		
		Scanner scanner = new Scanner(System.in);
		while (true) {
			System.out.print("선택(1 : 조회,  2 : 등록,  그외 : 종료) : ");
			String menu = scanner.next();
			if (menu.equals("1")) {
				for (int i=0; i <arrayList.size(); i = i + 1) {
					arrayList.get(i).disp();
				}
			} else if (menu.equals("2")) {
				Student s = new Student();//s객체생성
				s.input();//입력
				arrayList.add(s);//추가함
			} else {
				break;
			}
		}
		System.out.println("프로그램이 종료되었습니다.");
		
	}

}
