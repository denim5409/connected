package exam26;

class OuterClass{
	int x = 10;
	class InnerClass{
		int y = 5;
	}
}

public class Example {
	public static void main(String[] args) {
		OuterClass myOuter = new OuterClass();
		OuterClass.InnerClass myInner = myOuter.new InnerClass();
		System.out.println(myInner.y + myOuter.x);
	}
}

//ÁßÃ¸Å¬·¡½º