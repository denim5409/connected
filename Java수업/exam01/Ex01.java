package exam01;
import java.util.Scanner;
public class Ex01 {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		String name;
		String[] array = new String[3];
		int kor;
		int eng;
		int math;
		for (int i = 0 ; i < array.length ; i = i + 1) {
			System.out.print("이름 : ");
			name = scan.next();
			System.out.print("국어점수 : ");
			kor = scan.nextInt();
			System.out.print("영어점수 : ");
			eng = scan.nextInt();
			System.out.print("수학점수 : ");
			math = scan.nextInt();
			array[i] = name + "," + kor + "," + eng + "," + math;
			
		}
		for (int i = 0 ; i < array.length ; i = i + 1) {
			String imsi = array[i];
			String[] arrayImsi = imsi.split(",");

			int total = 0;
			total = total + Integer.parseInt(arrayImsi[1]);
			total = total + Integer.parseInt(arrayImsi[2]);
			total = total + Integer.parseInt(arrayImsi[3]);
			
			double avg = (double)total / 3;
			
			array[i] = imsi + "," + total + "," + avg;
		}		
		System.out.println("===========================================");
		System.out.println("이름 \t 국어 \t 영어 \t 수학 \t 총점\t 평균");
		System.out.println("===========================================");
			
		for (int i = 0 ; i < array.length ; i = i + 1) {
			String[] imsi = array[i].split(",");
			System.out.println(imsi[0] + "\t" + imsi[1]+ "\t" + imsi[2]+ "\t" + imsi[3] + 
					"\t" + imsi[4]+ "\t" + imsi[5]);
		}
		System.out.println("===========================================");
	}
}
