package com.dao;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.entity.User;

@Repository
public class UserDaoImpl {
	@Resource
	private SessionFactory sessionFactory; 
	
	public boolean loginUser(User user){
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		
		User user1 = session.get(User.class,user.getAddress());
		tx.commit();
		session.close();
		if(user1 != null){
			if(user.getPassword().equals(user1.getPassword())){
				return true;
			}else{
				return false;
			}
		}else{
			return false;
		}
	}
	
	public void saveUserDao(String name,String email,String password){
		Session session= sessionFactory.getCurrentSession();
		User u = new User();
		u.setAddress(email);
		u.setName(name);
		u.setPassword(password);
		
		session.save(u);
	}
	
	public boolean rePasswordDao(User user){
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		
		User user1 = session.get(User.class, user.getAddress());
		tx.commit();
		if(user1.getAddress().equals(user.getAddress())&&user1.getPassword().equals(user.getPassword())){
			return true;
		}else{
			return false;
		}
	}
	
	public void setNewPasswordDao(User user){
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		
		User user1 = session.get(User.class, user.getAddress());
		user1.setPassword(user.getPassword());
		
		session.save(user1);
		tx.commit();
	}
}
