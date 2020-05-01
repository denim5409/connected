package day03;

public class Ex03 {

	public static void main(String[] args) {

//		byte a = 9;
//		System.out.println(Byte.MIN_VALUE);
//		System.out.println(Byte.MAX_VALUE);
//		
//		System.out.println(Short.MIN_VALUE);
//		System.out.println(Short.MAX_VALUE);
//
//		System.out.println(Integer.MIN_VALUE);
//		System.out.println(Integer.MAX_VALUE);
//
//		System.out.println(Float.MIN_VALUE);
//		System.out.println(Float.MAX_VALUE);
//
//		System.out.println(Double.MIN_VALUE);
//		System.out.println(Double.MAX_VALUE);
//		
//		System.out.println(Long.MIN_VALUE);
//		System.out.println(Long.MAX_VALUE);
//
//		System.out.println(Character.MIN_VALUE);
//		System.out.println(Character.MAX_VALUE);

		
//산술연산자		
//		int a = 5;
//		int b = 7;
//		int c = a + b;
//		int d = a - b;
//		int e = a * b;
//		int f = a / b;
//		
//		System.out.println(a);
//		System.out.println(b);
//		System.out.println(c);
//		System.out.println(d);
//		System.out.println(e);
//		System.out.println(f);
		
//		int a,b;
//		float r;
//		a = 5;
//		b = 3;
//		r = a + b;
//		
//		System.out.println(a);
//		System.out.println(b);
//		System.out.println(r);


//		int a,b;
//		float c;
//		a = 5;
//		b = 3;
//		c = a % b;
//		
//		System.out.println(a);
//		System.out.println(b);
//		System.out.println(c);

		
//대입연산자		
//		int a = 5;
//		a = a + 1;
//		System.out.println(a);
//
//		a += 1; // a = a + 1과 동일하다.
//		System.out.println(a);
//
//		a -= 1; // a = a - 1과 동일하다.
//		System.out.println(a);
//		
//		a *= 2; // a = a * 2과 동일하다.
//		System.out.println(a);
//
//		a /= 2; // a = a / 2과 동일하다.
//		System.out.println(a);

		
//증감연산자		
//		int a = 5;
//		a++;//연산 후 1증가, a = a + 1, a += 1
//		System.out.println(a);
//		
//		++a;//1증가후 연산, 
//		System.out.println(a);
		
//		int x = 5;
//		int y = 0;
//		y = x++;
//		System.out.println(y);
//		System.out.println(x);
		
//		int x = 5;
//		int y = 0;
//		y = ++x;
//		System.out.println(y);
//		System.out.println(x);
		
//		int x = 5;
//		int y = 0;
//		y = --x;
//		System.out.println(y);
//		System.out.println(x);

//		int x = 5;
//		int y = 0;
//		y = x--;
//		System.out.println(y);
//		System.out.println(x);

		
//비교연산자(결과는 true, false만 나올수 있음)		
//		int a = 5;
//		int b = 3;
//		System.out.println(a > b);

//		int a = 5;
//		int b = 3;
//		System.out.println(a >= b);

//		int a = 5;
//		int b = 3;
//		System.out.println(a < b);

//		int a = 5;
//		int b = 3;
//		System.out.println(a <= b);
		
//		int a = 5;
//		int b = 3;
//		System.out.println(a == b);

//		int a = 5;
//		int b = 3;
//		System.out.println(a != b);
	
		
//논리연산자(and : &&,  or : ||, Not : !)
		
//		int a = 5;
//	    int b = 10;
//	    int c = 7;
//	    int d = 4;
//		boolean r;
//		r = a > b && c < d;
//		System.out.println(r);
//
//		r = !(a > b) && !(c < d);
//		System.out.println(r);
//		
//		r = a > b || c < d;
//		System.out.println(r);
//		
//		r = !(a > b) || c < d;
//		System.out.println(r);
		

//삼항연산자			
//		String s = (5 < 7) ? "T" : "F"; //(5 < 7) 참일때 "T", 거짓일때 "F"
//		System.out.println(s);
		
//		int sss = (5 < 7) ? 1 : 0; //(5 < 7) 참일때 1, 거짓일때 0
//		System.out.println(sss);
		
//		String name = "김철수";
//		System.out.println(name);
//		System.out.println("당신의 이름은 " + name + "입니다");
//		
//		int age = 20;
//		System.out.println(name + "님의 나이는 " + age + "세입니다");


		int year = 1990;
		
		int age = 2019 - year;
		System.out.println("나이 : " + age);
		
		year = 2000;
		age = 2019 - year;
		System.out.println("나이 : " + age);
		
		
	}

}
