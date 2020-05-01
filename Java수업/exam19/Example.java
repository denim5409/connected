package exam19;
import java.util.ArrayList;

public class Example {

	public static void main(String[] args) {
		ArrayList<String> cars = new ArrayList<String>();
		cars.add("Volvo");
		cars.add("Ford");
		cars.add("Mazda");
		cars.add("Lexus");
		System.out.println(cars);

		System.out.println(cars.get(0));//해당인덱스의 값을 가져옴
		System.out.println(cars.get(1));
		System.out.println(cars.get(2));
		System.out.println(cars.get(3));

		cars.set(2, "Benz");//수정
		System.out.println(cars.get(2));
		
		cars.remove(0);//삭제
		System.out.println(cars);
		
		System.out.println(cars.size());
		
		for (int i = 0; i < cars.size(); i = i +1) {
			System.out.println(cars.get(i));
		}

		for (String s : cars) {
			System.out.println(s);//위의 for문과 같은 형태
		}
		
		
	}

}
