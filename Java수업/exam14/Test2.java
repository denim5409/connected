package exam14;
import java.util.Scanner;
//성적입력하는 배열
public class Test2 {
	public static void main(String[] args) {
		String name;
		int kor;
		int eng;
		int mat;
		int total;
		double avg;
		String[] array = new String[5];
		Scanner s = new Scanner(System.in);
		for (int i = 0; i<5; i++) {
			System.out.print("이름 : ");
			name = s.next();
			System.out.print("국어점수 : ");
			kor = s.nextInt();
			System.out.print("영어점수 : ");
			eng = s.nextInt();
			System.out.print("수학점수 : ");
			mat = s.nextInt();
			array[i] = name + "," + kor + "," + eng + "," + mat;
		}
		for (int i = 0; i<5; i++) {
			String[] imsi = array[i].split(",");
			total = 0;
			for (int j = 1; j<4;j++) {
				total = total + Integer.parseInt(imsi[j]);
			}
			avg = (double)(total)/3;
			array[i] = array[i] + "," + total + "," + avg;
		}
		System.out.println("============================================");
		System.out.println("이름 \t 국어점수 \t 영어점수\t 수학점수\t 총점\t 평균");
		System.out.println("============================================");
		for (int i = 0; i<5; i++) {
			String[] imsi = array[i].split(",");
			for (int j = 0; j<imsi.length; j++) {
			System.out.print(imsi[j] + "\t");
			}
			System.out.println();
		}
		System.out.println("============================================");
	}
}
