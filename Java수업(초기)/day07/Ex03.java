package day07;

public class Ex03 {

	public static void main(String[] args) {
//배열
//타입 선언(갯수)
//타입

//		String[] car1; 이렇게 하면 오류(선언만 하고 초기화 하지 않음)
//		String[] car1 = {"Volvo","BMW","Ford","Mazda"};
//		System.out.println(car1); 메모리값 반환함.
//		System.out.println(car1[0]);
//		System.out.println(car1[2]);

		int[] myNum = {10,20,30,40};
//		System.out.println(myNum[1]);
//		System.out.println(myNum[3]);
	
//		int[] myNum2 = {1,2,3,4,"5"};5가 문자라서 안됨
		int[] myNum3 = new int[7];//선언 및 생성
//		myNum3[0] = 1;
//		myNum3[1] = 2;
//		myNum3[2] = 3;
//		myNum3[3] = 4;
//		myNum3[4] = 5;
//		myNum3[5] = 6;
//		myNum3[6] = 7;

		int[] myNum4 = new int[] {10,20,30,40,50};
//		System.out.println(myNum4[2]);
	
//		System.out.println(myNum.length);
//		System.out.println(myNum3.length);
//		System.out.println(myNum4.length);
	
//		for (int i = 0; i < myNum4.length; i = i + 1) {
//			System.out.println(myNum4[i]);
//		}
	
		System.out.println(myNum4[2]);
		myNum4[2] = 100;
		System.out.println(myNum4[2]);

		
		
		
		
	}

}
