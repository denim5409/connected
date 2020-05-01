package exam22;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class Example {

	public static void main(String[] args) {
		Set<String> set1 = new HashSet<String>();//Set은 중복허용안함. 순서없음.

//		System.out.println(set1);
		boolean flag1 = set1.add("kim");
		boolean flag2 = set1.add("lee");
		boolean flag3 = set1.add("jang");
		boolean flag4 = set1.add("park");
		boolean flag5 = set1.add("choi");
//		System.out.println(set1);
		
		Iterator<String> iter = set1.iterator();
		while(iter.hasNext()) {
			String str = iter.next();
			System.out.println(str);
		}
		System.out.println("============================");
		
		set1.remove("lee");
		for (String s : set1) {
			System.out.println(s);
		}
	}

}

