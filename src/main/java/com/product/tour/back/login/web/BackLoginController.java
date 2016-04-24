package com.product.tour.back.login.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.product.sys.login.service.IBackLoginService;
import com.product.sys.user.po.UserPO;

/**
 * 
 * <p>Title: BackLoginController</p>
 * <p>Description: 后台登陆页面的Controller</p>
 * @author xie
 * @date 2016-4-22 下午8:14:53
 */
@Controller
@RequestMapping("/back")
public class BackLoginController {
	
	private static final String ROOT_PATH = "/back/index/";
	
	@RequestMapping("/login")
	public String loginPage(){
		return ROOT_PATH+"login";
	}
	
	@RequestMapping("/index")
	public String index(){
		return ROOT_PATH+"/index";
	}
}
