package com.dao;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.entity.User;

@Repository
public class RegistUserDaoImpl {
	
	@Resource
	private SessionFactory sessionFactory;
	
	public void saveuser(User user){
		 Session session = sessionFactory.openSession();
	     Transaction tx = session.beginTransaction();
	     
	     session.save(user);
	     tx.commit();
	}
	
}
