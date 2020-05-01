package exam10;
//캡슐화 : Getter & Setter : private 변수에 값을 읽어오거나 저장할때
public class Person {
	private String name = "홍길동";
	private int age;
	private String address;

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
//	public String getName() {//Getter : 통상적으로 public으로 시작, get + 변수명(앞은 대문자) 조합
//		return name;
//	}
//	public int getAge() {
//		return age;
//	}
//	public String getAddress() {
//		return address;
//	}
//	public void setName(String name) {//Setter
//		this.name = name;
//	}
	
	
	
	
	
	
}
