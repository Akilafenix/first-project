package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Category;


@Repository
public class CategoryDAOimpl implements CategoryDAO {
	
	@Autowired (required=true)
	SessionFactory sessionFactory;

	public void addcategory(Category category) {
		try{
			
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
			session.save(category);
			trans.commit();
			session.flush();
			session.close();
		}
		
		catch(Exception ex)
		{
			System.out.println(ex);
		}
		
	}

	public List<Category> getCategoryList() {
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
			@SuppressWarnings("unchecked")
			List<Category> catlist = session.createQuery("from Category").list();
			trans.commit();
			session.flush();
			session.close();
			return catlist;
	}

}
