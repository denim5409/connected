package exam24;

import java.io.File;
public class DeleteExample {
	public static void main(String[] args) {
		File myObj = new File("test.txt");
		if (myObj.delete()) {
			System.out.println("Delete the file : " + myObj.getName());
		} else {
			System.out.println("Failed to delete the file.");
		}
	}
}
