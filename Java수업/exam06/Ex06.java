package exam06;

public class Ex06 {
	
	String name;
	int kor;
	int eng;
	int mat;
	int tot;
	double avg;
	
	public Ex06(String name, int kor, int eng, int mat) {
		this.name = name;
		this.kor = kor;
		this.eng = eng;
		this.mat = mat;
		tot = this.kor + this.eng + this.mat;
		avg = (double)tot / 3;
	}

	public void display() {
		System.out.println(name + "\t" + kor + "\t" + eng + "\t" + mat + "\t" + tot + "\t" + avg);
	}
	
	
}
