package test02;
import java.util.Scanner;
public class Sum {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		String num;
		int tot = 0;
		System.out.print("숫자를 입력하세요 : ");
		num = scanner.next();
		for (int i = 0; i < num.length(); i=i+1) {
			tot = tot + Integer.parseInt(num.substring(i,i+1));
		}
		System.out.println(tot);
	}
}
