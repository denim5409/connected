package exam2802;

import java.util.Scanner;

public class Example {
	public static void main(String[] args) {
		String menu;
		Scanner scan = new Scanner(System.in);
		while (true) {
			System.out.print("선택(1:상품관리, 2:회원관리, 그타:종료) : ");
			menu = scan.next();
			if (menu.contentEquals("1")) {
				SangpumExample se = new SangpumExample();
				se.smenu();
			} else if (menu.contentEquals("2")) {
				MemberExample pe = new MemberExample();
				pe.pmenu();
			} else {
				break;
			}
		}
	}

}
