package pt01;

import java.util.Scanner;

public class Student {
	//Member Field(멤버변수)
	String name;
	int kor;
	int eng;
	int mat;
	int tot;
	double avg;

	Scanner scan = new Scanner(System.in);
	//Constructor(생성자 - 멤버필드에 대한 초기화)
	public Student() {

	}
	
	//메소드
	public void input() {
		System.out.print("이름 : ");
		name = scan.next();
		System.out.print("국어 : ");
		kor = scan.nextInt();
		System.out.print("영어 : ");
		eng = scan.nextInt();
		System.out.print("수학 : ");
		mat = scan.nextInt();

		sum(kor, eng, mat);
		aver(kor, eng, mat);
	}
	
	public void sum(int kor, int eng, int mat) {
		tot = kor + eng + mat;
	}
	public void aver(int kor, int eng, int mat) {
		avg = (double)(kor + eng + mat) / 3;
	}
	public void disp() {
		System.out.print(name + "\t");
		System.out.print(kor + "\t");
		System.out.print(eng + "\t");
		System.out.print(mat + "\t");
		System.out.print(tot + "\t");
		System.out.println(avg);
	}
	
}
