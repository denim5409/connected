package exam14;

import java.util.Scanner;

public class Test01 {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);

		System.out.print("문자를 입력하세요 : ");
		String word = s.next();
		int a = word.length();
		for (int i=0;i<a;i=i+1) {
			System.out.println(word.substring(i,i+1));
		}
	}
}
