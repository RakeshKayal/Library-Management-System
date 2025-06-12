package hibernateUtil;



import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class sesf {
	
	 static SessionFactory sessionFactory;
	
	public static SessionFactory getS() {
		
		try {
			if(sessionFactory==null) {
				
				sessionFactory=new Configuration().configure("/configuration/hibernate.cfg.xml").buildSessionFactory();
				
			}
			}catch(Exception e) {
				System.out.println("sorry");
			}
			return sessionFactory;
	
	
	}

}

