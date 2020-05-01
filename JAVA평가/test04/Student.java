package test04;
import java.util.Scanner;
public class Student {
	//member field
	String name;
	int kor;
	int eng;
	int mat;
	int tot;
	double avg;
	//constructor
	
	Scanner scan = new Scanner(System.in);
	//method

	public void input() {//입력
		System.out.print("이름 : ");
		name = scan.next();
		System.out.print("국어점수 : ");
		kor = scan.nextInt();
		System.out.print("영어점수 : ");
		eng = scan.nextInt();
		System.out.print("수학점수 : ");
		mat = scan.nextInt();
		sum(kor, eng, mat);
		aver(kor, eng, mat);
	}
	public void sum(int kor, int eng, int mat) {//총점계산
		tot = kor + eng + mat;
	}
	public void aver(int kor, int eng, int mat) {//평균계산
		avg = (double)(tot)/3;
	}
	public void disp1() {//타이틀바출력
		System.out.println("==============================================");
		System.out.println("이름\t국어\t영어\t수학\t총점\t평균");
		System.out.println("==============================================");
	}
	public void disp2() {//리스트출력
		System.out.print(name + "\t");
		System.out.print(kor + "\t");
		System.out.print(eng + "\t");
		System.out.print(mat + "\t");
		System.out.print(tot + "\t");
		System.out.println(avg);
	}
	public void disp3() {//종료바출력
		System.out.println("==============================================");
	}
}