package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import entity.Book;
import entity.Department;
import entity.libary_Issue_Book;
import entity.student;
import hibernateUtil.conf3;

public class Book_Issuee {
	
	static Session s;
	static Transaction tx;
	static boolean f=false;
	public static student exitS(String s_id) {
		  try (SessionFactory sf = conf3.getcon()) {
			  s=sf.openSession();
			 
			  Query q= s.createQuery("from student where id =:i");
			  q.setParameter("i", s_id);
			
			  return (student) q.uniqueResult();
			
			
	         
	            
	        }
		  
	    }
	
	public static Book exitB(String b_id) {
		
			 SessionFactory sf = conf3.getcon();
			 
			 s=sf.openSession();
			 
			  Query q= s.createQuery("from Book where id = :i");
			  q.setParameter("i", b_id);
			
			  return (Book) q.uniqueResult();
	            
	        
	    }
	
	public static Department exitD(String d) {
		SessionFactory sf = conf3.getcon();
	    
		 try {
			   Session s= sf.openSession();
			   Query q= s.createQuery("from Department where name = :n");
			   q.setParameter("n", d);
			   
			   Department ds=(Department) q.uniqueResult();
			   
			   
			  return ds;
			   
			   
			   
		   }catch(Exception e) {
			   System.out.println("soor"+e.getLocalizedMessage());
			   e.printStackTrace();
			   System.out.println(e.getMessage());
			   return null;
			   
			   
		   }
	}

	

	public static boolean issueBook(libary_Issue_Book l ,String b) {
		try(SessionFactory sf= conf3.getcon()) {
			s=sf.openSession();
			tx=s.beginTransaction();
			s.save(l);
			
			
			Query q=s.createQuery("update Book set status= 'Not_Avaliable' where id= :i");
			q.setParameter("i",b );
			q.executeUpdate();
			tx.commit();
			s.close();
			f= true;
			
			
			
		}
		catch(Exception e) {
			System.out.println(e.getLocalizedMessage());
			f= false;
		}
		return f;
	}
}
	
	
	
