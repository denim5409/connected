package exam07;

public class Ex07 {
	String name;
	int kor;
	int eng;
	int mat;
	int tot;
	double avg;
	
	public Ex07(String name, int kor, int eng, int mat) {
		this.name = name;
		this.kor = kor;
		this.eng = eng;
		this.mat = mat;
		sum(kor, eng, mat);
		aver(kor, eng, mat);
	}

	public void sum(int kor, int eng, int mat) {
		tot = kor + eng + mat;
	}

	public void aver(int kor, int eng, int mat) {
		avg = (double)(kor + eng + mat) / 3;
	}

	public void display( ) {
		System.out.println(name + "\t" + kor + "\t" + eng + "\t" + mat + "\t" + tot + "\t" + avg);
	}
	
	


}
