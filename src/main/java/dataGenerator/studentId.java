package dataGenerator;

import java.util.Random;

public class studentId {

	public static String getId() {
		
		Random r= new Random();
		int s= r.nextInt(1000,10000);
		return "ST"+s;

	}

}
