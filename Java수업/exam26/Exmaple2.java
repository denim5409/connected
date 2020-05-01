package exam26;

class OuterClass1 {
	int x = 10;
	static class InnerClass {
		int y = 5;
	}
}
public class Exmaple2 {
	public static void main(String[] args) {
		OuterClass1.InnerClass myInner = new OuterClass1.InnerClass();
		System.out.println(myInner.y);
	}
}
