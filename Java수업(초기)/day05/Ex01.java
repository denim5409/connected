package day05;

public class Ex01 {

	public static void main(String[] args) {

		
//		String txt = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
//		System.out.println("String 타입의 txt 변수의 길이 : " + txt.length());
//		int length = txt.length();
//		String txt5 = txt.substring(length - 5, length);
//		System.out.println(txt5);

//		String txt = "Hello World";
//		System.out.println(txt.toUpperCase());
//		System.out.println(txt.toLowerCase());
		
//		String txt = "Please locate where 'locate' occurs!";
//		System.out.println(txt.indexOf("locate"));

//		String firstName = "John";
//		String lastName = "Doe";
//		System.out.println(firstName.concat(lastName));

//		String str1 = "Java";
//		String str2 = "java";
//		boolean equals = str1.equals(str2);
//		System.out.println("equals : " + equals);

//		boolean equals = "aaa".contentEquals("bbb");
//		System.out.println("equals : " + equals);
		
//		String str = "abcdef";
//		int indexOf = str.indexOf("d");
//		System.out.println("indexOf : " + indexOf);
		
//		String str = "A*B*C*D";
//		String replace = str.replace("*","-");
//		System.out.println("replace : " + replace);

//		String str = "1234";
//		String toString = str.toString();
//		System.out.println("toString : " + toString);
		
		//글자 앞뒤에 공백 제거함. 글자중간에 공백은 제거하지 않음.
//		String s = "      java java java      ";
//		String v; v = s.trim();
//		System.out.println("trim : " + v);
//		String replace = v.replace(" ", "");
//		System.out.println("replace : " + replace);
		
//		String a = "afdsafdsafdsafdsafdsafdsafdsafdsafds";
//		String b = "afdsafdsafdsafdsbfdsafdsafdsafdsafds";
//
//		a = a.replace("afds", "");
//		b = b.replace("afds", "");
//
//		int aa = a.length();
//		int bb = b.length();
//
//		boolean c = aa == bb;
//		System.out.println(c);
		

		String a = "fsdafasfasdfasfasdfsadf";
		String b = "safasfasfsadfasfasffasd";
		String c = b.replace(a, "");
		
		String d = c.length() == 0 ? "동일합니다.":"다름"; 
		System.out.println(d);
		
		

		
		
		
	}

}
