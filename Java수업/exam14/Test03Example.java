package exam14;
//성적입력하는 arrayList방식_실행class
import java.util.ArrayList;
import java.util.Scanner;

public class Test03Example {
	public static void main(String[] args) {
		ArrayList<Test03> arrayList = new ArrayList<Test03>();
		Scanner s = new Scanner(System.in);
		Test03 t = new Test03();
		while(true) {
			System.out.print("메뉴선택(0:조회, 1:입력, 그외:종료) : ");
			String menu = s.next();
			if (menu.equals("0")) {
				t.disp1();
				for (int i = 0; i < arrayList.size(); i = i +1) {
					arrayList.get(i).disp2();
				}
				t.disp3();
			} else if(menu.equals("1")) {
				Test03 t2 = new Test03();
				t2.input();
				arrayList.add(t2);
			} else {
				break;
			}
		}
		System.out.println("프로그램을 종료합니다.");
	}
}
