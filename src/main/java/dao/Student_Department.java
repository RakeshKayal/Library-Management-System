package dao;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import entity.Department;
import entity.student;
import hibernateUtil.sesf;


public class Student_Department {
	static Session ss;
	static Transaction tx;
	static boolean f=false;
	

	public static boolean insert(student s, Department d) {
		try{
			
			SessionFactory sf=sesf.getS(); 
			 ss= sf.openSession();
			 tx=ss.beginTransaction();
			Department exiting= getd(d);
			if(exiting==null) {
				
				ss.save(d);
				ss.save(s);
				
			}
			else {
				s.setDepartment(exiting);
				ss.save(s);
				
				
				
			}
			tx.commit();
			ss.close();
			f=true;
			}catch(Exception e) {
				System.out.println(e.getLocalizedMessage());
				f= false;
			}
			
			
			return f;
			
			
		}

		private static Department getd(Department d) {
			
			String ds= d.getName();
			
			Query q= ss.createQuery("from Department where name= :d");
			q.setParameter("d", ds);
			
			return (Department) q.uniqueResult();
			
		}

	}
