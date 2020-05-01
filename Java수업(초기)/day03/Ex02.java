package day03;

public class Ex02 {

	public static void main(String[] args) {

		int kor = 80;
		int eng = 91;
		int math = 100;
		
		int total = kor + eng + math;
		
		float avg = (float)total / 3;

//		String lin = "==============================================";
//		String title = "국어 \t 영어 \t 수학 \t 총점 \t 평균";
//		String value = kor + "\t" + eng + "\t" + math + "\t" + total + "\t" + avg;
//		String printValue = lin + "\n" + title + "\n" + lin + "\n" + value + "\n" + lin;
//
//		System.out.println(printValue);

		
//		String printValue = "==========================================" + "\n" + 
//				"국어 \t 영어 \t 수학 \t 총점 \t 평균" + "\n" + 
//				"==========================================" + "\n" +
//				kor + "\t" + eng + "\t" + math + "\t" + total + "\t" + avg + "\n" +
//				"==========================================";
//
//		System.out.println(printValue);
		
		String printValue = "";
		printValue = printValue + "==========================================" + "\n"; 
		printValue = printValue + "국어 \t 영어 \t 수학 \t 총점 \t 평균" + "\n"; 
		printValue = printValue + "==========================================" + "\n";
		printValue = printValue + kor + "\t" + eng + "\t" + math + "\t" + total + "\t" + avg + "\n";
		printValue = printValue + "==========================================";

		System.out.println(printValue);

		
//		String a = "";
//		a = a + "안녕하세요?\n";
//		a = a + "반갑습니다.";
//				
//		System.out.println(a);
		
		
		
//		float avg1 = (float)(total / 3);
//		float avg2 = (float)total / 3;
//		float avg3 = total / (float)3;
//		float avg4 = total / 3.0f;
		
//		System.out.println(total);
//		System.out.println(avg);
//		System.out.println(avg1);
//		System.out.println(avg2);
//		System.out.println(avg3);

		
//		System.out.println("==============================================");
//		System.out.println("국어"+"\t"+"영어"+"\t"+"수학"+"\t"+"총점"+"\t"+"평균");
//		System.out.println("==============================================");
//		System.out.println(kor + "\t" + eng + "\t"+math+"\t"+total+"\t"+avg);
//		System.out.println("==============================================");
		
//		short kor = 80;
//		short eng = 90;
//		short math = 100;
//		//short aa = kor + eng; -> short와 short 더해지면 정수형으로 변함
//		
//		int total = kor + eng + math;
//		
//		double avg = total / 3;
//		
//		System.out.println(total);
//		System.out.println(avg);
		
		
	}

}
