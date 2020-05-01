package exam14;

import java.util.ArrayList;
import java.util.Scanner;

public class StudentExample {

	public static void main(String[] args) {
		ArrayList<Student> arrayList = new ArrayList<Student>();
		Scanner s = new Scanner(System.in);
		String menu;
		Student t = new Student();
		while(true) {
			System.out.print("선택(0:조회, 1:입력, 그외:종료) : ");
			menu = s.next();
			if (menu.equals("0")) {
				t.disp1();
				for (int i = 0; i < arrayList.size(); i = i +1) {
					arrayList.get(i).disp2();
				}
				t.disp3();
			} else if(menu.equals("0")) {
				
			} else {
				break;
			}
		}

	}

}
