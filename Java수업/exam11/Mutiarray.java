package exam11;

public class Mutiarray {

	public static void main(String[] args) {
		int[][] ar1 = new int[3][4];//2차원 배열 선언
		int[][] ar2 = {{1,2,3,4},{5,6,7,8},{9,10,11,12}};//3행4열, 선언 및 초기화
//		System.out.println(ar2[1][1]);//값이 나온다.
//		System.out.println(ar2[2][1]);

		ar1[1][1] = 5;
		
		for (int i = 0; i<ar1.length;i=i+1) {
			for (int j = 0; j<ar1[i].length;j=j+1) {
				System.out.print(ar1[i][j]+" ");
			}
			System.out.println();
		}

		for (int i = 0; i<ar2.length;i=i+1) {
			for (int j = 0; j<ar2[i].length;j=j+1) {
				System.out.print(ar2[i][j]+" ");
			}
			System.out.println();
		}
	}
}
