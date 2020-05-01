package exam25;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
public class Example2 {
	public static void main(String[] args) {
		LocalDateTime myDateObj = LocalDateTime.now();
		System.out.println("Befor formatting : " + myDateObj);
	
		DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
	
		String formattedDate = myDateObj.format(myFormatObj);
		System.out.println("After formatting : " + formattedDate);
		
	}
}
//yyyy-MM-dd "1988-09-29"
//dd/MM/yyyy "29/09/1988"
//dd-MMM-yyyy "29-Sep-1988"
//E, MMM dd yyyy "Thu, Sep 29 1988"