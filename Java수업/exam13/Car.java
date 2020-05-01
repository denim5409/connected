package exam13;

public class Car extends Vehicle {//상속 : 부모(Vehicle)의 것을 자식(Car)이 물려받아서 쓴다. 사용할때는 extends + 부모 class
	private String modeName = "Mustang";
	
	public static void main(String[] args) {
		Car car = new Car();
		System.out.println(car.modeName);
		car.honk();
		System.out.println(car.brand);
		System.out.println(car.modeName);
	}

}
