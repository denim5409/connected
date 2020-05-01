package day04;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ex0202 {

	public static void main(String[] args) throws IOException {

		BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("이름을 입력하세요 : ");
		String name = in.readLine();
		
		System.out.print("주민번호를 입력하세요(숫자만) : ");
		String ju = in.readLine();
		String ju1 = ju.substring(0,6);
		String ju2 = ju.substring(6,13);
		
		String a = ju2.substring(0,1);
		int sung = Integer.parseInt(a);
		
		String gender = (sung == 1 || sung == 3) ? "남자" : "여자";
		
		//String gender = (sung.equals("1")) ? "남자" : "여자";  문자열일 경우
		
		
		String b = ju.substring(0,2);
		int c = Integer.parseInt(b);
			c = c + 1900;
		int	age = (sung == 1 || sung == 2) ? 2020 - c : c - 1884;
					
		String print = "당신의 이름은 " + name + "입니다. \n" +
                		"당신의 성별은 " + gender + "입니다. \n" + 
                		"당신의 나이는 " + age + "세입니다. \n" + 
                		"당신의 주민번호는 " + ju1 + "-" + ju2 + "입니다.";
		
		System.out.println(print);
		
	}

}
