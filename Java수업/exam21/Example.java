package exam21;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map.Entry;
import java.util.Scanner;

public class Example {
	
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		ArrayList<HashMap<String, String>> arrayList = new ArrayList<HashMap<String, String>>();
		while(true) {
			HashMap<String, String> map = new HashMap<String, String>();
			System.out.print("이름 : ");
			String name = scanner.next();
			if (name.contentEquals("q")) {
				break;
			}
			System.out.print("국어 : ");
			String kor = scanner.next();
			System.out.print("영어 : ");
			String eng = scanner.next();
			System.out.print("수학 : ");
			String mat = scanner.next();
			map.put("이름", name);
			map.put("kor", kor);
			map.put("eng", eng);
			map.put("mat", mat);
			int tot = 0;
			tot = tot + Integer.parseInt(kor);
			tot = tot + Integer.parseInt(eng);
			tot = tot + Integer.parseInt(mat);
			double avg = (double)(tot)/3;
			String imsitot = "" + tot;
			String imsiavg = "" + avg;
			
			map.put("tot", imsitot);
			map.put("avg", imsiavg);
			arrayList.add(map);
		}

		int i = 0;
		for (i = 0; i<arrayList.size(); i = i +1) {
			for (String s : arrayList.get(i).keySet()) {
				System.out.print(s + ":" + arrayList.get(i).get(s) + "/ ");
			}
			System.out.println();
		}
		
//		for (Entry<String, String> h : arrayList.get(i).entrySet()) {
//			System.out.println(h.getKey() + ":" + h.getValue() + "/");
//			
//		}
		
		
		
		
	}
	
	
	
}
