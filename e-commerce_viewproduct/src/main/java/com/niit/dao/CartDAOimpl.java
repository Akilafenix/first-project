package com.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Cart;

@Repository
public class CartDAOimpl implements CartDAO {
	
	@Autowired
	SessionFactory sessionFactory;

	public void addcart(Cart cart) {
		try
		{
			
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		session.save(cart);
		trans.commit();
		session.flush();
		session.close();
		}
		catch(Exception ex)
		{
			System.out.println("Error="+ex);
		}
		
	}

	public List<Cart> getcartList(String username) 
		{
			Session session=sessionFactory.openSession();
			Query query=session.createQuery("from Cart where username=:username and status='N'");
			query.setParameter("username",username);
			@SuppressWarnings("unchecked")
			List<Cart> list=query.list();
			return list;
		}


}
