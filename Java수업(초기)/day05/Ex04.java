package day05;

import java.util.*;

public class Ex04 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);

		//입력===================================
		System.out.print("이름 : ");
		String name = scanner.next();
		System.out.print("국어 : ");
		int kor = scanner.nextInt();
		System.out.print("영어 : ");
		int eng = scanner.nextInt();
		System.out.print("수학 : ");
		int math = scanner.nextInt();
		//========================================
		
		//처리===================================
		int total = kor + eng + math;
		double avg = total / 3.0;
		String avg1 = "";
		if (avg >= 90) {
			avg1 = "A";
		} else if (avg < 90 && avg >= 80) {
			avg1 = "B";
		} else if (avg < 80 && avg >= 70) {
			avg1 = "C";
		} else if (avg < 70 && avg >= 60) {
			avg1 = "D";
		} else {
			avg1 = "F";
		}
		//========================================

		//출력===================================
		String printValue = "";
		printValue = printValue + "===================================================\n";
		printValue = printValue + "이름\t국어\t영어\t수학\t총점\t평균\t등급\n";
		printValue = printValue + "===================================================\n";
		printValue = printValue + name+"\t"+kor+"\t"+eng+"\t"+math+"\t"+total+"\t"+avg+"\t"+avg1+"\n";
		printValue = printValue + "===================================================";
		
		System.out.println(printValue);
		//========================================

	}

}
