package com.product.sys.user.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.product.sys.user.dao.UserMapper;
import com.product.sys.user.po.UserPO;
import com.product.sys.user.service.IUserManageService;

@Service
public class UserManageServiceImpl implements IUserManageService{

	@Resource
	private UserMapper userMapper;

	@Override
	public String login_tx(String userName, String password) {
		UserPO user = new UserPO();
		//user.setUserID("123");
		user.setUserName("haha");
		user.setPassword("hoho");
		userMapper.insertSelective(user);
		return null;
	}
	
	
}
