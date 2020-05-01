package exam14;
//성적입력하는 arrayList방식_계산class
import java.util.Scanner;
public class Test03 {
	//member field
	String name;
	int kor;
	int eng;
	int mat;
	int tot;
	double avg;
	Scanner scan = new Scanner(System.in);
	//constructor, 필요없으면 생략가능(객체선언시 자동생성)
	public Test03() {
	}
	public void input() {
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
	public void sum(int kor, int eng, int mat) {
		tot = kor + eng + mat;
	}
	public void aver(int kor, int eng, int mat) {
		avg = (double)(tot) / 3;
	}
	public void disp1() {
		System.out.println("===============================================");
		System.out.println("이름\t국어점수\t영어점수\t수학점수\t총점\t평균");
		System.out.println("===============================================");
	}
	public void disp2() {
		System.out.print(name + "\t");
		System.out.print(kor + "\t");
		System.out.print(eng + "\t");
		System.out.print(mat + "\t");
		System.out.print(tot + "\t");
		System.out.println(avg);
	}
	public void disp3() {
		System.out.println("===============================================");
	}
}
