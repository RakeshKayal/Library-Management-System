package hibernateUtil;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class conf5 {
    static SessionFactory sessionFactory;

    // Get the SessionFactory (singleton)
    public static SessionFactory getcon() {
        try {
            if (sessionFactory == null || sessionFactory.isClosed()) {
                sessionFactory = new Configuration().configure("/configuration/hibernate4.cfg.xml").buildSessionFactory();
            }
        } catch (Exception e) {
            System.out.println("Error initializing SessionFactory."+e.getLocalizedMessage());
            e.printStackTrace();
        }
        return sessionFactory;
    }

    // Shutdown the SessionFactory when the application is stopped
    public static void shutdown() {
        if (sessionFactory != null && !sessionFactory.isClosed()) {
            sessionFactory.close();
        }
    }
}
