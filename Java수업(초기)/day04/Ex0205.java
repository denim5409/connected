package day04;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ex0205 {

	public static void main(String[] args) throws IOException {
		
		BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("이름 : ");
		String name1 = in.readLine();
		
		System.out.print("국어 : ");
		String a = in.readLine();
		int kor1 = Integer.parseInt(a);
		
		System.out.print("영어 : ");
		String b = in.readLine();
		int eng1 = Integer.parseInt(b);
		
		System.out.print("수학 : ");
		String c = in.readLine();
		int math1 = Integer.parseInt(c);

		System.out.print("과학 : ");
		String d = in.readLine();
		int sci1 = Integer.parseInt(d);

		System.out.print("역사 : ");
		String e = in.readLine();
		int his1 = Integer.parseInt(e);


		System.out.print("이름 : ");
		String name2 = in.readLine();
		
		System.out.print("국어 : ");
		a = in.readLine();
		int kor2 = Integer.parseInt(a);
		
		System.out.print("영어 : ");
		b = in.readLine();
		int eng2 = Integer.parseInt(b);
		
		System.out.print("수학 : ");
		c = in.readLine();
		int math2 = Integer.parseInt(c);

		System.out.print("과학 : ");
		d = in.readLine();
		int sci2 = Integer.parseInt(d);

		System.out.print("역사 : ");
		e = in.readLine();
		int his2 = Integer.parseInt(e);

		int total1 = kor1 + eng1 + math1 + sci1 + his1;
		double avg1 = total1 / 5;
		String pass1 = (avg1 > 80) ? "Pass":"재시험";
		int total2 = kor2 + eng2 + math2 + sci2 + his2;
		double avg2 = total2 / 5;
		String pass2 = (avg2 <= 80) ? "재시험":"Pass";
		
//		String print_value = "";
//		print_value = print_value + "=====================================================================\n";
//		print_value = print_value + "이름\t국어\t영어\t수학\t과학\t역사\t총점\t평균\t재시험\n";
//		print_value = print_value + "=====================================================================\n";
//		print_value = print_value + name1 + "\t";
//		print_value = print_value + kor1 + "\t";
//		print_value = print_value + eng1 + "\t";
//		print_value = print_value + math1 + "\t";
//		print_value = print_value + sci1 + "\t";
//		print_value = print_value + his1 + "\t";
//		print_value = print_value + total1 + "\t";
//		print_value = print_value + avg1 + "\t";
//		print_value = print_value + pass1 + "\n";
//		
//		print_value = print_value + name2 + "\t";
//		print_value = print_value + kor2 + "\t";
//		print_value = print_value + eng2 + "\t";
//		print_value = print_value + math2 + "\t";
//		print_value = print_value + sci2 + "\t";
//		print_value = print_value + his2 + "\t";
//		print_value = print_value + total2 + "\t";
//		print_value = print_value + avg2 + "\t";
//		print_value = print_value + pass2 + "\n";
//		print_value = print_value + "=====================================================================";

		String print_value = "";
		print_value = print_value + "=====================================================================\n";
		print_value = print_value + "이름\t국어\t영어\t수학\t과학\t역사\t총점\t평균\t재시험\n";
		print_value = print_value + "=====================================================================\n";
		print_value = print_value + name1+"\t"+kor1+"\t"+eng1+"\t"+math1+"\t"+sci1+"\t"+his1+"\t"+total1+"\t"+avg1+"\t"+pass1+"\n";
		print_value = print_value + name2+"\t"+kor2+"\t"+eng2+"\t"+math2+"\t"+sci2+"\t"+his2+"\t"+total2+"\t"+avg2+"\t"+pass2+"\n";
		print_value = print_value + "=====================================================================";
		
		System.out.println(print_value);

	}

}
