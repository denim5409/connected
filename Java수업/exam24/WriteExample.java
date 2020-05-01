package exam24;

import java.io.FileWriter;

public class WriteExample {

	public static void main(String[] args) {
		try {
			FileWriter myWriter = new FileWriter("test.txt");
			myWriter.write("열공하세요");
			myWriter.close();
			System.out.println("성공");
		} catch (Exception e){
			System.out.println("An error occurred.");
			e.printStackTrace();
		}
	}

}
