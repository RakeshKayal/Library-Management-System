package hibernateUtil;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class conf2 {
  
static SessionFactory sessionFactory;
	
	public static SessionFactory getSs() {
		
		try {
			if(sessionFactory==null) {
				
				sessionFactory=new Configuration().configure("/configuration/hibernate1.cfg.xml").buildSessionFactory();
				
			}
			}catch(Exception e) {
				System.out.println("sorry");
				System.out.println(e.getLocalizedMessage());
			}
		
		
			return sessionFactory;
	
	
	}

}



