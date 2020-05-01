package exam12;
//객체배열
public class Ex02 {

	public static void main(String[] args) {
		int[] s1 = {11,22,33,44,55};
		String[] s2 = {"빨","주","노","초","파","남","보"};

//		for (int i = 0; i<s1.length;i=i+1) {
//			System.out.println(s1[i]);
//		}
		for (int i:s1) {//i는 아무 거나 써도 된다
			System.out.println(i);
		}
		
		for (String s:s2) {
			System.out.println(s);
		}
	}

}
