package com.product.sys.login.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.product.sys.login.dao.BackLoginMapper;
import com.product.sys.login.service.IBackLoginService;
import com.product.sys.user.po.UserPO;

@Service
@Transactional(readOnly=true)
public class BackLoginServiceImpl implements IBackLoginService{

	@Resource
	private BackLoginMapper backLoginMapper;

	@Override
	public UserPO getUserPO(String userName, String password) {
		// TODO Auto-generated method stub
		return backLoginMapper.getUserPO(userName, password);
	}
	
	
}
