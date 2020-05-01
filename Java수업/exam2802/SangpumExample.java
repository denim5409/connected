package exam2802;

import java.util.ArrayList;
import java.util.Scanner;

public class SangpumExample{
	public void smenu() {
		Scanner scan = new Scanner(System.in);
		String imsi;
		ArrayList<Sangpum> arraySP = new ArrayList<Sangpum>();
		while (true) {
			System.out.print("선택(1:상품목록, 2:상품등록, 그타:종료) : ");
			imsi = scan.next();
			if (imsi.contentEquals("1")) {
				for (int i = 0; i<arraySP.size();i++) {
					arraySP.get(i).disp();
				}
			} else if(imsi.contentEquals("2")) {
				arraySP.add(new Sangpum());
			} else {
				break;
			}
		}
	}

}
