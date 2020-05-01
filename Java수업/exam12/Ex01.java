package exam12;
//°´Ã¼¹è¿­
class Person {
	String name;
	int age;
	
	public Person(String name, int age) {
		this.name = name;
		this.age = age;
	}
	public void disp() {
		System.out.println(name + " : " + age);
	}
}
public class Ex01 {

	public static void main(String[] args) {
		Person[] pa = new Person[5];
		pa[0] = new Person("È«±æµ¿", 22);
		pa[1] = new Person("±èÃ¶¼ö", 32);
		pa[2] = new Person("ÀÌ¿µÈñ", 28);
		pa[3] = new Person("¿î¼öÁø", 44);
		pa[4] = new Person("±èÁ¤±æ", 37);

		for (int i = 0; i<pa.length;i = i + 1) {
			pa[i].disp();
		}
	}
}
