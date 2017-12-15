package com.service;

import javax.annotation.Resource;
import com.entity.User;

import org.springframework.stereotype.Service;

import com.dao.LoginUserDaoImpl;

@Service
public class LoginUserServiceImpl {
	@Resource
	private LoginUserDaoImpl loginuser;
	
	public boolean LoginUser(User user){
		return loginuser.loginUser(user);
	}
}
