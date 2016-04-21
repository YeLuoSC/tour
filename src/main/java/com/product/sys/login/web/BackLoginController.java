package com.product.sys.login.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.product.sys.login.service.IBackLoginService;
import com.product.sys.user.po.UserPO;

@Controller
@RequestMapping("/common/login")
public class BackLoginController {
	
	private static final String ROOT_PATH = "/back/";
	
	@Resource
	private IBackLoginService backLoginServiceImpl;
	
	@RequestMapping("")
	public String loginPage(){
		return ROOT_PATH+"/login";
	}
	
	@RequestMapping("auth")
	public String authUserInfo(String userName,String password){
		UserPO userPO = backLoginServiceImpl.getUserPO(userName, password);
		if(userPO != null){
			return ROOT_PATH+"tourType";
		}else{
			return null;
		}
		
	}
}
