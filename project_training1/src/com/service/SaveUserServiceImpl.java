package com.service;

import org.springframework.stereotype.Service;

import com.dao.RegistUserDaoImpl;
import com.entity.User;

import javax.annotation.Resource;

@Service
public class SaveUserServiceImpl {
	@Resource
	private RegistUserDaoImpl registuser;

	public void saveuser(User user){
		registuser.saveuser(user);
	}
}
