package exam25;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;

public class Example {
	public static void main(String[] args) {
		LocalDate myObj1 = LocalDate.now();
		System.out.println(myObj1);

		LocalTime myObj2 = LocalTime.now();
		System.out.println(myObj2);
		
		LocalDateTime myObj3 = LocalDateTime.now();
		System.out.println(myObj3);
	}

}
