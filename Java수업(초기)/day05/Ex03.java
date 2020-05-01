package day05;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ex03 {

	public static void main(String[] args) throws IOException {

		BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
		
		//입력======================================
		System.out.print("이름 : ");
		String name = in.readLine();
		System.out.print("국어 : ");
		String a = in.readLine();
		int kor = Integer.parseInt(a);
		System.out.print("영어 : ");
		a = in.readLine();
		int eng = Integer.parseInt(a);
		System.out.print("수학 : ");
		a = in.readLine();
		int math = Integer.parseInt(a);
		//========================================

		//처리======================================
		int total = kor + eng + math;
		double avg = total / 3.0;
		int grade = (int)(avg / 10);
		String avg1 = "";

		switch (grade){
		
		case 10 :  
			avg1 = "A";
			break;
		case 9 : 
			avg1 = "A";
			break;
		case 8 : 
			avg1 = "B";
			break;
		case 7 : 
			avg1 = "C";
			break;
		case 6 : 
			avg1 = "D";
			break;
		default : 
			avg1 = "F";
			break;
		}

//		if (avg >= 90) {
//		avg1 = "A"; 
//	} else if (avg < 90 && avg >= 80) {
//		avg1 = "B"; 
//	} else if (avg < 80 && avg >= 70) {
//		avg1 = "C"; 
//	} else if (avg < 70 && avg >= 60) {
//		avg1 = "D"; 
//	} else {
//		avg1 = "F"; 
//	}

		
		
		
		//========================================
		
		//출력======================================
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
