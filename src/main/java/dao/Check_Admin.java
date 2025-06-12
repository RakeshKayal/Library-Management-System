package dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import entity.Admin;
import hibernateUtil.conf5;

public class Check_Admin {

	static SessionFactory sf= conf5.getcon();
	static Session s= sf.openSession();
	static boolean f= false;
	public static Boolean a(String email, String pass) {
		
		Query q= s.createQuery("from Admin where email =: e and password =:p");
		q.setParameter("e", email);
		q.setParameter("p", pass);
		
		Admin a=(Admin) q.uniqueResult();
		
		if(a== null) {
			f=false;
		}else {
			f=true;
		}
		
		
		return f;
		
		
		
	}

}
