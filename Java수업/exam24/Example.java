package exam24;

import java.io.File;
public class Example {

	public static void main(String[] args) {
		try {
			File myObj = new File("test.txt");//import 필요.
			
			if (myObj.createNewFile()) {
				System.out.println("File create : " + myObj.getName());
			} else {
				System.out.println("File already exists.");
			}
		} catch (Exception e){
			System.out.println("An error occurred.");//오류가 발생했습니다.
			e.printStackTrace();
		}

	}

}
//파일처리