package com.Controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.entity.User;
import com.service.LoginUserServiceImpl;

@Controller
@RequestMapping("/loginuser")
public class LoginUserController {

	@Resource
	private LoginUserServiceImpl loginUserService;
	                        
	//@RequestMapping(value="/login",method=RequestMethod.POST)
	public String LoginUser(HttpSession session,User user){
		
		System.out.println("这里是登录用户的Controller层。");
		System.out.println(user.getName());
		if(loginUserService.LoginUser(user)){
			//JOptionPane.showMessageDialog(null, "登录成功。");
			session.setAttribute("user", user);
			return "index";
		}else{
			//JOptionPane.showMessageDialog(null, "账户或密码错误，登录失败，请重试。");
			return "login";
		}
	}
}
