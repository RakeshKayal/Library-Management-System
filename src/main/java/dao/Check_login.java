package dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import hibernateUtil.sesf;

public class Check_login {
	
	
	static boolean f= false;
	static Session ss;
	public static boolean check(String s_id,String pass) {
		
		
		try {
			
			SessionFactory sf= sesf.getS();
			ss= sf.openSession();
			
			
			Query q= ss.createQuery("from student where id = :i and password= :p");
			q.setParameter("i", s_id);
			q.setParameter("p", pass);
			Object q1= q.uniqueResult();
			
			if(q1!=null) {
				f=true;
			}else {
				f=false;
			}
			
			
			
			
			
			
		}catch(Exception e) {
			
			f= false;
			
			System.out.println(e.getLocalizedMessage());
			
		}
		
		
		
		
		
		return f;
		
	}

}
