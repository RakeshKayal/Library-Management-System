package dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import entity.Book;
import hibernateUtil.conf2;

public class Book_Reg {
	
	static Session s;
	static Transaction tx;
	static boolean f= false;
	
	
	
	public static boolean BookRegister(Book b) {
		
		try {
			
			SessionFactory sf= conf2.getSs();
			s=sf.openSession();
			tx=s.beginTransaction();
			s.save(b);
			tx.commit();
			s.close();
			f=true;
			
			
			
		}catch(Exception e) {
			
			f= false;
			System.out.println(e.getLocalizedMessage());
		}
		
		return f;
		
	}

}
