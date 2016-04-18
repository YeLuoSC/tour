package com.product.sys.user.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.product.sys.user.service.IUserManageService;

@Controller
@RequestMapping("/common/user")
public class UserManageController {

	@Resource
	private IUserManageService userManageServiceImpl;
	
	@RequestMapping("")
	public String loginPage(){
		return "/login";
	}
	@RequestMapping("login")
	public Object login(String userName,String password){
		userManageServiceImpl.login_tx(userName, password);
		System.out.println("test");
		return null;
	}
}
