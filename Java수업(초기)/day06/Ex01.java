package day06;

public class Ex01 {

	public static void main(String[] args) {

		int i = 5;
		int j = 0;
		j = i++;
		System.out.println(i + "," + j);

		i = 5;
		j = ++i;
		System.out.println(i + "," + j);
	}

}
