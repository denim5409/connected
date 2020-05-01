package exam19;

import java.util.ArrayList;
import java.util.Collections;

public class Example2 {

	public static void main(String[] args) {
		ArrayList<Integer> nums = new ArrayList<Integer>();//뒤에 Integer는 안적어도 된다만, 적자.
		nums.add(30);
		nums.add(10);
		nums.add(40);
		nums.add(20);//순서가 있다(index 사용가능)

		Collections.sort(nums);//정렬함
		
		for (int i : nums) {
			System.out.println(i);
		}

		nums.clear();//내용을 비움
		System.out.println(nums);
		
		
//		for (int i = 0; i<nums.size(); i = i + 1) {
//			System.out.println(nums.get(i));
//		}

	}

}
