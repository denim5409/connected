package exam13;

public class ChildExample {

	public static void main(String[] args) {
//		Parent p = new Parent();
//		System.out.println(p.a);
//		System.out.println(p.name);

		Child c = new Child();
//		System.out.println(c.b);
//		
//		System.out.println(c.a);//재정의 : 부모한테도 있고, 자식한테도 있으면 자식에 있는 값이 먼저나옴(멤버변수, 메소드)
//		System.out.println(c.name);//부모(Parent)에게서 상속받음

		c.method1();//메소드 재정의
		
	}

}
