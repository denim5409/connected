package test02;
//전화번호부 - 이름, 전화번호, 주소지
import java.util.Scanner;

public class Test {
	//멤버변수
	String name;
	String fnum;
	String lnum;
	String mnum;
	String num;
	String junbun;
	String juso;
	
	Scanner scan = new Scanner(System.in);
	
	//생성자
	
	//메소드
	public void input() {
		System.out.print("이름 : ");
		name = scan.next();
		System.out.print("전화번호(숫자만) : ");
		num = scan.next();
		System.out.print("주소 : ");
		juso = scan.next();

		jun(fnum, mnum, lnum);
	}

	public void jun(String flum, String mnum, String lnum) {
		
		if (num.length() == 10) {
			fnum = num.substring(0,3);
			mnum = num.substring(3,6);
			lnum = num.substring(6,10);
		} else {
			fnum = num.substring(0,3);
			mnum = num.substring(3,7);
			lnum = num.substring(7,11);
		}
		junbun = fnum + "-" + mnum + "-" + lnum;
	}

	public void disp() {
		System.out.print(name + "\t");
		System.out.print(junbun + "\t");
		System.out.println(juso);
		
	}
	
	
	
	
}
