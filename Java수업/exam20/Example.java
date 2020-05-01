package exam20;

import java.util.HashMap;

public class Example {

	public static void main(String[] args) {
		HashMap<String, String> capitalCities = new HashMap<String, String>();
//		System.out.println(capitalCities);
		capitalCities.put("England","London");//값추가
		capitalCities.put("Germany","Berlin");
		capitalCities.put("Norway","Oslo");
		capitalCities.put("USA","Washington DC");//size제한이 없다
		
//		System.out.println(capitalCities);//키 = 값

//		System.out.println(capitalCities.get("England"));
//		capitalCities.remove("England");
//		System.out.println(capitalCities);
		
//		capitalCities.clear();
//		System.out.println(capitalCities);

//		System.out.println(capitalCities.size());
		
		for (String s : capitalCities.keySet()) {//키만 출력
			System.out.println(s);
		}
		System.out.println();
//		
		for (String s : capitalCities.keySet()) {
			System.out.println(capitalCities.get(s));//값만 출력
		}
		System.out.println();
//		
//		
		for (String s : capitalCities.values()) {//값만 출력
			System.out.println(s);
		}
		System.out.println();
//
		for (String s : capitalCities.keySet()) {
			System.out.println("key : " + s + ", value : " + capitalCities.get(s));//키,값 같이 출력
		}
		System.out.println();

//==============================================================================================
		
//		HashMap<String, Integer> people = new HashMap<String, Integer>();
//
//		people.put("john", 32);
//		people.put("Steve", 30);
//		people.put("Angle", 33);
//		System.out.println(people);
//		System.out.println();
//		
//		for (String s : people.keySet()) {
//			System.out.println("key : " + s + ", value : " + people.get(s));
//		}
//		System.out.println();
//
//		for (String s : people.keySet()) {
//			System.out.println(s);
//		}
//		System.out.println();
//		
//		for (String s : people.keySet()) {
//			System.out.println(s + "," + people.get(s));
//		}
//		System.out.println();

		
	}

}
//리스트 : 순서가 있다(인덱스값이 있음), 중복된 값이 들어갈수있다.
//맵 : 키값이 중복될수 없다. 키 = 밸류형태로 출력되므로 인덱스가 없음.
//List, Map <-- Container변수, 반복문 사용