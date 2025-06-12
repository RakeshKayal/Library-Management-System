package dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import entity.Book;
import entity.libary_Issue_Book;
import entity.student;
import hibernateUtil.conf3;
import hibernateUtil.conf4;
import servlet.returns;

public class Book_return {
	
	static Session s;
	static Transaction tx;
	static Boolean f= false;

	public static Book got(String bookId) {
		
		
		SessionFactory sf = conf4.getcon();
		 
		 s=sf.openSession();
		 
		  Query q= s.createQuery("from Book where id = :i");
		  q.setParameter("i", bookId);
		
		  return (Book) q.uniqueResult();
		
		
		
		
		
	}

	

	public static student exitss(String studentId) {
		SessionFactory sf= conf4.getcon();
		s= sf.openSession();
		Query q= s.createQuery("from student where id= :i");
		q.setParameter("i", studentId);
		return (student) q.uniqueResult();
	}



	public static libary_Issue_Book exits(student s2, Book bs) {
	    String b = bs.getId();  // Assuming getId() returns the book's ID
	    String sa = s2.getId(); // Assuming getId() returns the student's ID
	    SessionFactory sf = conf4.getcon();
	    s = sf.openSession();
	    
	    // Adjust the query to use the IDs of book and student
	    Query q = s.createQuery("from libary_Issue_Book where book.id = :i and student.id = :s");
	    q.setParameter("i", b);
	    q.setParameter("s", sa);
	    
	    return (libary_Issue_Book) q.uniqueResult();
	}



	public static boolean returns(libary_Issue_Book l, Book bs) {
		
		String b= bs.getId();
		
	try {	SessionFactory sf = conf4.getcon();
	    s = sf.openSession();
	    tx= s.beginTransaction();
	    
	    
	    Query q= s.createQuery("delete from libary_Issue_Book where book.id= :i");
	    q.setParameter("i", b);
	    q.executeUpdate();
	    Query q1= s.createQuery("update Book set status = 'Not_Avaliabel' where id= :d");
	    q1.setParameter("d", b);
	    q.executeUpdate();
	    tx.commit();
	    s.close();
	    f=true;
	    
	}catch(Exception e) {
		System.out.println(e.getLocalizedMessage());
		f= false;
	}
	    
	return f;
		
		
	}




	


	



	

}
