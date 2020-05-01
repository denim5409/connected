package exam10;

public class PersonExample {
	public static void main(String[] args) {
		Person p = new Person();
		System.out.println(p.getName());
		String name = p.getName();
		int age = p.getAge();
		String address = p.getAddress();
		
		p.setName("±èÃ¶¼ö");
		System.out.println(p.getName());
	}

}
