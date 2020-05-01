package exam24;

import java.io.File;
public class DirExample {
	public static void main(String[] args) {
		File myObj = new File("C:\\AAA\\BBB");
		if (myObj.delete()) {
			System.out.println("Delete the folder : " + myObj.getName());
		} else {
			System.out.println("Failed th delete the folder.");
		}
	}
}
