package exam07;

//class Test {
//	static void method1() { //static을 붙이면 공유개념이므로 밑에서 그대로 사용 가능하다(객체 생성 X)
//		String kind = "bird";
//	}
//	public static void main(String[] args) {
//위에 static이 없을때		
//		Test test = new Test(); //클래스 안에 있더라도 main 메소드 바깥에 있으면 객체를 생성해야 불러올수 있음
//		test.method1();

////위에 static이 있을때			
//		Test t = new Test();//객체를 생성해도 되고 안해도 된다
//		method1();//객체 생성을 안했을때는 앞에 객체 안붙여도 됨
	
//		Test t = new Test();
//		System.out.println(t.kind);
//	}
//}
//접근제한자 : public, (default), protected, private
//static : 객체생성없이 사용가능, 값을 공유할때

class Test {
	static String kind = "bird";
	int tot = 0;
	
	int sum(int i, int j) {//return값이 없을때는 void, 있을때는 return을 사용
		return i + j;
//		return a, b, c;//return은 하나의 값만 넣을수 있다. 사용불가

//	String sum2(int i, int j) {
//		int a = i + j;
//		int b = i - j;
//		int c = i * j;
//		String d = "" + a +","+ b +","+ c;
//		return d;
	}
	public static void main(String[] args) {
		Test t = new Test();
		int result = t.sum(3, 5);//result와 return되는 타입은 일치해야 한다.
	}
}
//메소드 : 반복적인것, 재사용 가능성이 있는 것을 등록해놓고 필요할 때마다 불러내서 사용하는 경우.
//		호출한다고 표현함. static 붙였을때는 객체안만들어도 됨, 없을때는 객체를 만들어야 함.