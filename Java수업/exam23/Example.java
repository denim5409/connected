package exam23;

public class Example {

	public static void main(String[] args) {
		try {
			int[] nums= {1, 2, 3};
			System.out.println(nums[10]);
		} catch (Exception e) {
//			e.printStackTrace();
			System.out.println("인덱스가 잘못되었습니다.");//예외발생시 실행
		} finally {//예외 발생해도, 안해도 출력됨.
			System.out.println("The 'try catch' is finished..");
		}

	}

}
//예외처리