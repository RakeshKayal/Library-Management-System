package dataGenerator;

import java.util.Random;

public class BookId {
	
	public static String getid() {
		
		
		Random r= new Random();
		int s= r.nextInt(1000,100000);
		return "BK"+s;
		
	}

}
