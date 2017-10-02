package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Supplier;

@Repository
public class SupplierDAOimpl implements SupplierDAO {
	@Autowired (required=true)
	SessionFactory sessionFactory;

	public void addsupplier(Supplier supplier) 
	{
		try
		{
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
			session.save(supplier);
			trans.commit();
			session.flush();
			session.close();
	
		
	    }
		catch(Exception ex)
		{
			System.out.println(ex);
		}
	}

	public List<Supplier> getSupplierList() 
	{
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		@SuppressWarnings("unchecked")
		List<Supplier> supplist=session.createQuery("from Supplier").list();
		trans.commit();
		session.flush();
		session.close();
		return supplist;
	}

}
