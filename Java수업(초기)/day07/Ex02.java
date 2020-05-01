package day07;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ex02 {

	public static void main(String[] args) throws IOException {

//선택하세요(0 : 조회, 1 : 입력, , 2 : 종료)
//0 입력시 "조회페이지입니다"
//선택하세요(0 : 조회, 1 : 입력, , 2 : 종료)
//1 입력시 "입력페이지입니다"
//2 입력시 "프로그램이 종료되었습니다."		
		
		BufferedReader in = new BufferedReader (new InputStreamReader(System.in));
		
		int num = 0;
		String n = "";
		while (true) {
			System.out.print("선택하세요 (0:조회, 1:입력,  2:종료) : ");
			n = in.readLine();
			num = Integer.parseInt(n);
			if (num == 0) {
				System.out.println("조회페이지입니다.");
			} else if (num == 1) {
				System.out.println("입력페이지입니다.");
			} else if (num == 2) {
				System.out.println("프로그램이 종료되었습니다.");
				break;
			} else {
				System.out.print("입력을 잘못하셨습니다. 다시 입력하세요. ");
			}

		}
	}

}
