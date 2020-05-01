package exam05;

public class Ex05 {
	//멤버변수
	String name;
	int kor;
	int eng;
	int mat;
	int tot;
	double avg;

	
//생성자 - 기본생성자, ()안에 아무것도 없는것
//	public Ex05() {
//	}

//
	public Ex05(String name, int kor, int eng, int mat) { //()안은 매개변수, 매개변수가 다르면 여러개 생성가능
		this.name = name;
		this.kor = kor;
		this.eng = eng;
		this.mat = mat;
		tot = kor + eng + mat;
		avg = (double)tot / 3;
	}
	
//생성자는 전역변수 초기화 시켜주는것	
	
}
