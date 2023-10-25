package com.anuj;

import java.util.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class App {
public static void main(String [] args)
{
	Configuration con=new Configuration().configure();
	SessionFactory sf=con.buildSessionFactory();
	Session session=sf.openSession();
	

	Transaction tx=session.beginTransaction();
    Product m1=new Product(111,"first");
    Product m2=new Product(222,"second");
    Product m3=new Product(333,"newOne");
    List<Product> l=new ArrayList<Product>();
    
    l.add(m1);
    l.add(m2);
    l.add(m2);
    l.add(m3);
    System.out.println(l);
    User g=new User("minkal",l);
    session.save(g);
    

	
    tx.commit();
	session.flush();
	session.close();
	sf.close();
	
}
}