package test03;
import java.util.Scanner;
public class Sungjuk {
	public static void main(String[] args) {
		String name;
		int kor;
		int eng;
		int mat;
		int tot;
		double avg;
		String[] array = new String[3];
		Scanner s = new Scanner(System.in);
		//입력
		for (int i = 0; i < 3; i = i +1) {
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
		//처리
		for (int i = 0; i < 3; i = i + 1) {
			tot = 0;
			avg = 0.0;
			String[] imsi = array[i].split(",");
			for (int j = 1; j < 4; j = j +1) {
				tot = tot + Integer.parseInt(imsi[j]);
			}
			avg = (double)(tot) / 3;
			array[i] = array[i] + "," + tot + "," + avg;
		}
		//출력
		System.out.println("==================================================");
		System.out.println("이름\t국어\t영어\t수학\t총점\t평균");
		System.out.println("==================================================");
		for (int i = 0; i < 3; i = i + 1) {
			String[] imsi = array[i].split(",");
			for (int j = 0; j<imsi.length; j = j + 1) {
				System.out.print(imsi[j] + "\t");
			}
			System.out.println();
		}
		System.out.println("==================================================");
	}
}
