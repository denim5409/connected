package exam24;

import java.io.File;
import java.util.ArrayList;
import java.util.Scanner;

public class ReadExample {

	public static void main(String[] args) {
		try {
			ArrayList<String> arrayList = new ArrayList<String>();
			File myObj = new File("test.txt");
			Scanner myReader = new Scanner(myObj);
			while (myReader.hasNextLine()) {
				String data = myReader.nextLine();
				arrayList.add(data);
			}
			myReader.close();
			for (int i=0; i < arrayList.size(); i = i +1) {
				String[] imsi = arrayList.get(i).split(",");
				System.out.print(imsi[0] + " ");
				System.out.print(imsi[1] + " ");
				System.out.print(imsi[2] + " ");
				System.out.print(imsi[3] + " ");
				
				int tot = 0;
				tot = tot + Integer.parseInt(imsi[1]);
				tot = tot + Integer.parseInt(imsi[2]);
				tot = tot + Integer.parseInt(imsi[3]);

				double avg = (double)(tot)/3;
				System.out.print(tot + " ");
				System.out.println(avg);
			}
		} catch (Exception e) {
			System.out.println("An error occurred.");
			e.printStackTrace();
		}

	}
}