package exam27;

class OuterClass{
	int x = 10;
	class InnerClass {
		public int myInnerMethod() {
			return x;
		}
	}
}
public class Example {

	public static void main(String[] args) {
		OuterClass myOuter = new OuterClass();
		OuterClass.InnerClass myInner = myOuter.new InnerClass();
		System.out.println(myInner.myInnerMethod());
	}
}
//외부클래스의 속성과 메소드에 액세스 할 수 있다.