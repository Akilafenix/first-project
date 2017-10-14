 package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Product;


@Repository
public class ProductDAOimpl implements ProductDAO {
	
	@Autowired(required=true)
	SessionFactory sessionFactory;

	public void addProduct(Product product) {
		try
		{
			
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		session.save(product);
		trans.commit();
		session.flush();
		session.close();
		}
		catch(Exception ex)
		{
			System.out.println("Error="+ex);
		}
	}
		
		
		@SuppressWarnings("unchecked")
		public List<Product> getProductList(){
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
			List<Product> productlist = session.createQuery("from Product").list();
			trans.commit();
			session.flush();
			session.close();
			return productlist ;
	}

	}


	

	

	

	

	

	

	

