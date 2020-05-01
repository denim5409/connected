package exam2102;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Scanner;

public class Student {
	//member field
	String name;
	int kor;
	int eng;
	int mat;
	int sci;
	int his;
	int tot;
	double avg;
	
	//constructor
	//method
	Scanner scan = new Scanner(System.in);
	ArrayList<HashMap> list = new ArrayList<HashMap>();
	public void input() {
		HashMap<String, String> map = new HashMap<String, String>();
		System.out.print("이름 : ");
		name = scan.next();
		System.out.print("국어 : ");
		kor = scan.nextInt();
		System.out.print("영어 : ");
		eng = scan.nextInt();
		System.out.print("수학 : ");
		mat = scan.nextInt();
		System.out.print("과학 : ");
		sci = scan.nextInt();
		System.out.print("역사 : ");
		his = scan.nextInt();
		
		tot = kor + eng + mat + sci + his;
		avg = (double)(tot)/5;
		
		map.put("이름", name);
		map.put("국어", "" + kor);
		map.put("영어", "" + eng);
		map.put("수학", "" + mat);
		map.put("과학", "" + sci);
		map.put("역사", "" + his);
		map.put("총점", "" + tot);
		map.put("평균", "" + avg);
		list.add(map);
	}
	public void disp() {
		System.out.println("=====================================================");
		System.out.println("이름\t국어\t영어\t수학\t과학\t역사\t총점\t평균");
		System.out.println("=====================================================");
		for (int i = 0; i < list.size(); i++) {
			System.out.print(list.get(i).get("이름") + "\t");
			System.out.print(list.get(i).get("국어") + "\t");
			System.out.print(list.get(i).get("영어") + "\t");
			System.out.print(list.get(i).get("수학") + "\t");
			System.out.print(list.get(i).get("과학") + "\t");
			System.out.print(list.get(i).get("역사") + "\t");
			System.out.print(list.get(i).get("총점") + "\t");
			System.out.println(list.get(i).get("평균"));
		}
		System.out.println("=====================================================");
	}
}
