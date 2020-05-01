package day06;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ex05 {

	public static void main(String[] args) throws IOException {
		BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
		System.out.print("숫자를 입력하세요 : ");
		String x = in.readLine();
		int num = Integer.parseInt(x);
		int hol = 0;
		int jak = 0;
		for (int i = 1 ; i <= num ; i = i + 1 ) {
			if (i % 2 == 1) {
				hol = hol + i;
			} else {
				jak = jak + i;
			}
		}

		String p = "";
		p = p + "입력한 숫자 : " + num + "\n";
		p = p + "홀수의 합 : " + hol + "\n";
		p = p + "짝수의 합 : " + jak + "\n";
		p = p + "총합계 : " + (hol + jak);
		
		System.out.println(p);
	}

}
