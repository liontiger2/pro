package com.dao;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.entity.User;

import org.hibernate.Session;
import org.hibernate.SessionFactory;


@Repository
public class LoginUserDaoImpl {

	@Resource
	private SessionFactory sessionFactory;
	
	public boolean loginUser(User user){
		Session session = sessionFactory.getCurrentSession();
		User user1 = session.get(User.class,user.getAddress());	
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
	
	public String userName(int id){
		User user = sessionFactory.getCurrentSession().get(User.class,id);
		return user.getName();
	}
	
}
