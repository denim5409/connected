package day06;

public class Ex06 {

	public static void main(String[] args) {
		String p = "";
		for (int i = 2 ; i <= 9 ; i = i + 1) {
			p = p + (i + "´Ü\n");
			for (int j = 1 ; j <= 9 ; j = j + 1) {
				p = p + (i + " * " + j + " = " + (i * j) + "\n");
			}
			p = p + "\n";
		}
		System.out.println(p);

	}
}
