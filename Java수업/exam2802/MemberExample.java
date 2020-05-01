package exam2802;

import java.util.ArrayList;
import java.util.Scanner;

public class MemberExample {
	public void pmenu() {
		ArrayList<Member> arrayMP = new ArrayList<Member>();
		Scanner scan = new Scanner(System.in);
		String imsi;
		while (true) {
			System.out.print("선택(1:회원목록, 2:회원등록, 그타:종료) : ");
			imsi = scan.next();
			if (imsi.contentEquals("1")) {
				for (int i = 0; i<arrayMP.size();i++) {
					arrayMP.get(i).disp();
				}
			} else if(imsi.contentEquals("2")) {
				arrayMP.add(new Member());
			} else {
				break;
			}
		}
	}
}
