package exam2802;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Scanner;
public class Member {
	String pName;
	String pAge;
	String pJun;
	String pDate;
	Scanner scanner = new Scanner(System.in);

	public Member() {
		System.out.print("이름 : ");
		pName = scanner.next();
		System.out.print("나이 : ");
		pAge = scanner.next();
		System.out.print("전화번호 : ");
		pJun = scanner.next();
//		LocalDate nowDate = LocalDate.now();
//		DateTimeFormatter nowFormat = DateTimeFormatter.ofPattern("yyyymmdd");
//		String nT = nowDate.format(nowFormat);
//		pDate = nT.substring(0, 4)+"-"+nT.substring(4, 6)+"-"+nT.substring(6, 8);

		LocalDate nowTime = LocalDate.now();
		DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("yyyyMMdd");
		String nT = nowTime.format(myFormatObj);
		pDate = nT.substring(0,4)+"-"+nT.substring(4,6)+"-"+nT.substring(6,8);
	
	}
	public void disp() {
		System.out.print("이름 : " + pName + "\t");
		System.out.print("나이 : " + pAge + "\t");
		System.out.println("전화번호 : " + pJun + "\t");
		System.out.println("가입일자 : " + pDate);

	}
	
}
