package com.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.UserDaoImpl;
import com.entity.User;
@Service
@Transactional
public class UserServiceImpl {
	@Resource
	private UserDaoImpl userdao;
	
	public boolean loginUserService(User user){
		return userdao.loginUser(user);
	}
	
	public void saveUserService(String name,String email,String password){
		userdao.saveUserDao(name,email,password);
	}
	
	public boolean rePasswordService(User user){
		return userdao.rePasswordDao(user);
	}
	
	public void setNewPasswordService(User user){
		userdao.setNewPasswordDao(user);
	}
}
